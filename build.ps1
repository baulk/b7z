#!/usr/bin/env pwsh
param(
    [ValidateSet("win64", "arm64")]
    [string]$Target = "win64"
)

$VisualCppTargets = @{
    "win64" = "amd64";
    "arm64" = "amd64_arm64";
}

$OutTargets = @{
    "win64" = "x64";
    "arm64" = "arm64";
}

$VisualCppTarget = $VisualCppTargets[$Target]
$OutTarget = $OutTargets[$Target]

Function StripPrefix {
    param(
        [parameter(Position = 0)]
        [String]$Text,
        [parameter(Position = 1)]
        [String]$Prefix
    )
    if ($Text.StartsWith($Prefix)) {
        return $Text.Substring($Prefix.Length)
    }
    return $Text
}

Function StripSuffix {
    param(
        [parameter(Position = 0)]
        [String]$Text,
        [parameter(Position = 1)]
        [String]$Suffix
    )
    if ($Text.EndsWith($Suffix)) {
        return $Text.Substring(0, $Text.Length - $Suffix.Length)
    }
    return $Text
}

Function Invoke-BatchFile {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [string] $Arguments
    )
    Set-StrictMode -Version Latest
    $tempFile = [IO.Path]::GetTempFileName()

    cmd.exe /c " `"$Path`" $Arguments && set > `"$tempFile`" " | Out-Host
    ## Go through the environment variables in the temp file.
    ## For each of them, set the variable in our local environment.
    Get-Content $tempFile | ForEach-Object {
        if ($_ -match "^(.*?)=(.*)$") {
            Set-Content "env:\$($matches[1])" $matches[2]
        }
    }
    Remove-Item $tempFile
}

Function Execute {
    param(
        [string]$FilePath,
        [string]$Arguments,
        [string]$WD
    )
    $ProcessInfo = New-Object System.Diagnostics.ProcessStartInfo
    $ProcessInfo.FileName = $FilePath
    if ([String]::IsNullOrEmpty($WD)) {
        $ProcessInfo.WorkingDirectory = $PWD
    }
    else {
        $ProcessInfo.WorkingDirectory = $WD
    }
    Write-Host "$FilePath $Arguments [$($ProcessInfo.WorkingDirectory)]"
    #0x00000000 WindowStyle
    $ProcessInfo.Arguments = $Arguments
    $ProcessInfo.UseShellExecute = $false ## use createprocess not shellexecute
    $Process = New-Object System.Diagnostics.Process
    $Process.StartInfo = $ProcessInfo
    try {
        if ($Process.Start() -eq $false) {
            return -1
        }
        $Process.WaitForExit()
    }
    catch {
        return 127
    }
    return $Process.ExitCode
}


$VisualCxxBatchFiles = $(
    "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvarsall.bat",
    "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat"
    "C:\Program Files\Microsoft Visual Studio\2022\Preview\VC\Auxiliary\Build\vcvarsall.bat"
)

$VisualCxxBatchFile = $null
foreach ($file in $VisualCxxBatchFiles) {
    if (Test-Path $file) {
        $VisualCxxBatchFile = $file
        break
    }
}
if ($null -eq $VisualCxxBatchFile) {
    Write-Host -ForegroundColor Red "visual c++ vcvarsall.bat not found"
    exit 1
}


Write-Host "call `"$VisualCxxBatchFile`" $VisualCppTarget"

Invoke-BatchFile -Path $VisualCxxBatchFile -Arguments $VisualCppTarget
$BUILD_ROOT = Join-Path -Path $PWD -ChildPath "build"
$DESTINATION = Join-Path -Path $BUILD_ROOT -ChildPath "out"
try {
    New-Item -ItemType Directory -Force -Path $DESTINATION
}
catch {
    Write-Host -ForegroundColor Red "mkdir error $_"
    exit 1
}

$ROOT = Join-Path -Path $PSScriptRoot -ChildPath "CPP\7zip"

# 7z.dll
$exitcode = Execute -FilePath "nmake" -WD "${ROOT}\Bundles\Format7zF"
if (0 -ne $exitcode) {
    exit $exitcode
}
Copy-Item -Force "${ROOT}\Bundles\Format7zF\${OutTarget}\7z.dll" $DESTINATION

# 7z.exe
$exitcode = Execute -FilePath "nmake" -WD "${ROOT}\UI\Console"
if (0 -ne $exitcode) {
    exit $exitcode
}
Copy-Item -Force "${ROOT}\UI\Console\${OutTarget}\7z.exe" $DESTINATION

# 7zG.exe
$exitcode = Execute -FilePath "nmake" -WD "${ROOT}\UI\GUI"
if (0 -ne $exitcode) {
    exit $exitcode
}
Copy-Item -Force "${ROOT}\UI\GUI\${OutTarget}\7zG.exe" $DESTINATION

# 7zFM.exe
$exitcode = Execute -FilePath "nmake" -WD "${ROOT}\UI\FileManager"
if (0 -ne $exitcode) {
    exit $exitcode
}
Copy-Item -Force "${ROOT}\UI\FileManager\${OutTarget}\7zFM.exe" $DESTINATION


$Version = Get-Date -UFormat "%Y%m%d"
$ARTIFACT_FILE = "$BUILD_ROOT/b7z-${Target}-$Version.zip"
Compress-Archive -Path "$DESTINATION/*" -DestinationPath $ARTIFACT_FILE -Force
$obj = Get-FileHash -Algorithm SHA256 $ARTIFACT_FILE
$baseName = Split-Path -Leaf $ARTIFACT_FILE
$hashtext = $obj.Algorithm + ":" + $obj.Hash.ToLower()
$hashtext | Out-File -Encoding utf8 -FilePath "$ARTIFACT_FILE.sha256"
Write-Host "$baseName`n$hashtext"