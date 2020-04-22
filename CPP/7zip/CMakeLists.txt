# cmake
set(B7Z_SOURCES_BASE_COMMON
    ../Common/CommandLineParser.obj
    ../Common/CRC.obj
    ../Common/IntToString.obj
    ../Common/ListFileUtils.obj
    ../Common/NewHandler.obj
    ../Common/StdInStream.obj
    ../Common/StdOutStream.obj
    ../Common/MyString.obj
    ../Common/StringConvert.obj
    ../Common/StringToInt.obj
    ../Common/UTFConvert.obj
    ../Common/MyVector.obj
    ../Common/Wildcard.obj)

set(B7Z_SOURCES_WINDOWS
    ../Windows/DLL.obj
    ../Windows/ErrorMsg.obj
    ../Windows/FileDir.obj
    ../Windows/FileFind.obj
    ../Windows/FileIO.obj
    ../Windows/FileLink.obj
    ../Windows/FileName.obj
    ../Windows/FileSystem.obj
    ../Windows/MemoryLock.obj
    ../Windows/PropVariant.obj
    ../Windows/PropVariantConv.obj
    ../Windows/Registry.obj
    ../Windows/System.obj
    ../Windows/TimeUtils.obj)

set(B7Z_SOURCES_7Z_COMMON
    Common/CreateCoder.obj
    Common/FilePathAutoRename.obj
    Common/FileStreams.obj
    Common/FilterCoder.obj
    Common/LimitedStreams.obj
    Common/MethodProps.obj
    Common/ProgressUtils.obj
    Common/PropId.obj
    Common/StreamObjects.obj
    Common/StreamUtils.obj
    Common/UniqBlocks.obj)

set(B7Z_SOURCES_UI_COMMON
    UI/Common/ArchiveCommandLine.obj
    UI/Common/ArchiveExtractCallback.obj
    UI/Common/ArchiveOpenCallback.obj
    UI/Common/Bench.obj
    UI/Common/DefaultName.obj
    UI/Common/EnumDirItems.obj
    UI/Common/Extract.obj
    UI/Common/ExtractingFilePath.obj
    UI/Common/HashCalc.obj
    UI/Common/LoadCodecs.obj
    UI/Common/OpenArchive.obj
    UI/Common/PropIDUtils.obj
    UI/Common/SetProperties.obj
    UI/Common/SortUtils.obj
    UI/Common/TempFiles.obj
    UI/Common/Update.obj
    UI/Common/UpdateAction.obj
    UI/Common/UpdateCallback.obj
    UI/Common/UpdatePair.obj
    UI/Common/UpdateProduce.obj)

set(B7Z_SOURCES_CONSOLE
    UI/Console/BenchCon.obj
    UI/Console/ConsoleClose.obj
    UI/Console/ExtractCallbackConsole.obj
    UI/Console/HashCon.obj
    UI/Console/List.obj
    UI/Console/Main.obj
    UI/Console/MainAr.obj
    UI/Console/OpenCallbackConsole.obj
    UI/Console/PercentPrinter.obj
    UI/Console/UpdateCallbackConsole.obj
    UI/Console/UserInputUtils.obj)

set(B7Z_SOURCES_OPT)
if("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x86_64"
   OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "AMD64"
   OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x64")
  set(B7Z_SOURCES_OPT ${BAULK7Z_DIR}/Asm/x86/7zCrcOpt.asm ${BAULK7Z_DIR}/Asm/x86/AesOpt.asm
                      ${BAULK7Z_DIR}/Asm/x86/LzmaDecOpt.asm ${BAULK7Z_DIR}/Asm/x86/XzCrc64Opt.asm)
  add_compile_options("-D_LZMA_DEC_OPT")
elseif("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x86")
  set(B7Z_SOURCES_OPT ${BAULK7Z_DIR}/Asm/x86/7zCrcOpt.asm ${BAULK7Z_DIR}/Asm/x86/AesOpt.asm
                      ${BAULK7Z_DIR}/Asm/x86/XzCrc64Opt.asm)
elseif("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "arm" or "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "arm64")
  set(B7Z_SOURCES_OPT ${BAULK7Z_DIR}/Asm/arm/7zCrcOpt.asm ${BAULK7Z_DIR}/C/Aes.c ${BAULK7Z_DIR}/C/XzCrc64.c)
else()
  set(B7Z_SOURCES_OPT ${BAULK7Z_DIR}/C/7zCrcOpt.c ${BAULK7Z_DIR}/C/Aes.c ${BAULK7Z_DIR}/C/XzCrc64.c)
endif()

set(B7Z_SOURCES_AR_COMMON
    Archive/Common/CoderMixer2.obj
    Archive/Common/DummyOutStream.obj
    Archive/Common/FindSignature.obj
    Archive/Common/HandlerOut.obj
    Archive/Common/InStreamWithCRC.obj
    Archive/Common/ItemNameUtils.obj
    Archive/Common/MultiStream.obj
    Archive/Common/OutStreamWithCRC.obj
    Archive/Common/ParseProperties.obj)

set(B7Z_SOURCES_AR
    Archive/Bz2Handler.obj
    Archive/DeflateProps.obj
    Archive/GzHandler.obj
    Archive/LzHandler.obj
    Archive/LzmaHandler.obj
    Archive/SplitHandler.obj
    Archive/XzHandler.obj)

file(GLOB B7Z_SOURCES_AR_7Z Archive/7z/*.cpp)
file(GLOB B7Z_SOURCES_AR_CAB Archive/Cab/*.cpp)
file(GLOB B7Z_SOURCES_AR_CHM Archive/Chm/*.cpp)
file(GLOB B7Z_SOURCES_AR_ISO Archive/Iso/*.cpp)
file(GLOB B7Z_SOURCES_AR_NSIS Archive/Nsis/*.cpp)
file(GLOB B7Z_SOURCES_AR_RAR Archive/Rar/*.cpp)
file(GLOB B7Z_SOURCES_AR_TAR Archive/Tar/*.cpp)
file(GLOB B7Z_SOURCES_AR_UDF Archive/Udf/*.cpp)
file(GLOB B7Z_SOURCES_AR_WIM Archive/Wim/*.cpp)
file(GLOB B7Z_SOURCES_AR_ZIP Archive/Zip/*.cpp)

set(B7Z_SOURCES_COMPRESS
    Compress/Bcj2Coder.obj
    Compress/Bcj2Register.obj
    Compress/BcjCoder.obj
    Compress/BcjRegister.obj
    Compress/BitlDecoder.obj
    Compress/BranchMisc.obj
    Compress/BranchRegister.obj
    Compress/ByteSwap.obj
    Compress/BZip2CRC.obj
    Compress/BZip2Decoder.obj
    Compress/BZip2Encoder.obj
    Compress/BZip2Register.obj
    Compress/CopyCoder.obj
    Compress/CopyRegister.obj
    Compress/Deflate64Register.obj
    Compress/DeflateDecoder.obj
    Compress/DeflateEncoder.obj
    Compress/DeflateRegister.obj
    Compress/DeltaFilter.obj
    Compress/ImplodeDecoder.obj
    Compress/Lzma2Decoder.obj
    Compress/Lzma2Encoder.obj
    Compress/Lzma2Register.obj
    Compress/LzmaDecoder.obj
    Compress/LzmaEncoder.obj
    Compress/LzmaRegister.obj
    Compress/LzOutWindow.obj
    Compress/LzxDecoder.obj
    Compress/PpmdDecoder.obj
    Compress/PpmdEncoder.obj
    Compress/PpmdRegister.obj
    Compress/PpmdZip.obj
    Compress/QuantumDecoder.obj
    Compress/ShrinkDecoder.obj
    Compress/XzDecoder.obj
    Compress/XzEncoder.obj
    Compress/BrotliDecoder.obj
    Compress/BrotliEncoder.obj
    Compress/BrotliRegister.obj
    Compress/Lz4Decoder.obj
    Compress/Lz4Encoder.obj
    Compress/Lz4Register.obj
    Compress/LizardDecoder.obj
    Compress/LizardEncoder.obj
    Compress/LizardRegister.obj
    Compress/Lz5Decoder.obj
    Compress/Lz5Encoder.obj
    Compress/Lz5Register.obj
    Compress/ZstdDecoder.obj
    Compress/ZstdEncoder.obj
    Compress/ZstdRegister.obj
    Compress/FastLzma2Register.obj)

file(GLOB B7Z_SOURCES_CRYPTO Crypto/*.cpp)

set(B7Z_SOURCES_C_FILES
    ${BAULK7Z_DIR}/C/7zStream.obj
    ${BAULK7Z_DIR}/C/Alloc.obj
    ${BAULK7Z_DIR}/C/Bcj2.obj
    ${BAULK7Z_DIR}/C/Bcj2Enc.obj
    ${BAULK7Z_DIR}/C/Bra.obj
    ${BAULK7Z_DIR}/C/Bra86.obj
    ${BAULK7Z_DIR}/C/BraIA64.obj
    ${BAULK7Z_DIR}/C/BwtSort.obj
    ${BAULK7Z_DIR}/C/CpuArch.obj
    ${BAULK7Z_DIR}/C/Delta.obj
    ${BAULK7Z_DIR}/C/HuffEnc.obj
    ${BAULK7Z_DIR}/C/LzFind.obj
    ${BAULK7Z_DIR}/C/LzFindMt.obj
    ${BAULK7Z_DIR}/C/Lzma2Dec.obj
    ${BAULK7Z_DIR}/C/Lzma2DecMt.obj
    ${BAULK7Z_DIR}/C/Lzma2Enc.obj
    ${BAULK7Z_DIR}/C/LzmaDec.obj
    ${BAULK7Z_DIR}/C/LzmaEnc.obj
    ${BAULK7Z_DIR}/C/MtCoder.obj
    ${BAULK7Z_DIR}/C/MtDec.obj
    ${BAULK7Z_DIR}/C/Ppmd7.obj
    ${BAULK7Z_DIR}/C/Ppmd7Dec.obj
    ${BAULK7Z_DIR}/C/Ppmd7Enc.obj
    ${BAULK7Z_DIR}/C/Ppmd8.obj
    ${BAULK7Z_DIR}/C/Ppmd8Dec.obj
    ${BAULK7Z_DIR}/C/Ppmd8Enc.obj
    ${BAULK7Z_DIR}/C/Sha1.obj
    ${BAULK7Z_DIR}/C/Sha256.obj
    ${BAULK7Z_DIR}/C/Sort.obj
    ${BAULK7Z_DIR}/C/Threads.obj
    ${BAULK7Z_DIR}/C/Xz.obj
    ${BAULK7Z_DIR}/C/XzDec.obj
    ${BAULK7Z_DIR}/C/XzEnc.obj
    ${BAULK7Z_DIR}/C/XzIn.obj)

# C sources
file(GLOB B7Z_SOURCES_BROTLI ${BAULK7Z_DIR}/C/brotli/*.c)
file(GLOB B7Z_SOURCES_LIZARD ${BAULK7Z_DIR}/C/lizard/*.c)
file(GLOB B7Z_SOURCES_LZ4 ${BAULK7Z_DIR}/C/lz4/*.c)
file(GLOB B7Z_SOURCES_LZ5 ${BAULK7Z_DIR}/C/lz5/*.c)
file(GLOB B7Z_SOURCES_ZSTD ${BAULK7Z_DIR}/C/zstd/*.c)
file(GLOB B7Z_SOURCES_FAST_LZMA2 ${BAULK7Z_DIR}/C/fast-lzma2/*.c)
file(GLOB B7Z_SOURCES_ZSTDMT ${BAULK7Z_DIR}/C/zstdmt/*.c)

# add flags to compile fast-lzma2
set_source_files_properties(${B7Z_SOURCES_FAST_LZMA2} PROPERTIES COMPILE_FLAGS "-DNO_XXHASH -DFL2_7ZIP_BUILD")

add_library(zstdmt STATIC ${B7Z_SOURCES_ZSTDMT})
target_include_directories(
  zstdmt
  PRIVATE ${BAULK7Z_DIR}/C/brotli
          ${BAULK7Z_DIR}/C/hashes
          ${BAULK7Z_DIR}/C/lizard
          ${BAULK7Z_DIR}/C/lz4
          ${BAULK7Z_DIR}/C/lz5
          ${BAULK7Z_DIR}/C/zstd)

add_executable(
  baulk7z
  ${B7Z_SOURCES_BASE_COMMON}
  ${B7Z_SOURCES_WINDOWS}
  ${B7Z_SOURCES_7Z_COMMON}
  ${B7Z_SOURCES_UI_COMMON}
  ${B7Z_SOURCES_OPT}
  ${B7Z_SOURCES_C_FILES}
  ${B7Z_SOURCES_AR_COMMON}
  ${B7Z_SOURCES_AR_7Z}
  ${B7Z_SOURCES_AR_CAB}
  ${B7Z_SOURCES_AR_CHM}
  ${B7Z_SOURCES_AR_ISO}
  ${B7Z_SOURCES_AR_NSIS}
  ${B7Z_SOURCES_AR_RAR}
  ${B7Z_SOURCES_AR_TAR}
  ${B7Z_SOURCES_AR_UDF}
  ${B7Z_SOURCES_AR_WIM}
  ${B7Z_SOURCES_AR_ZIP}
  ${B7Z_SOURCES_COMPRESS}
  ${B7Z_SOURCES_CRYPTO}
  ${B7Z_SOURCES_BROTLI}
  ${B7Z_SOURCES_LIZARD}
  ${B7Z_SOURCES_LZ4}
  ${B7Z_SOURCES_LZ5}
  ${B7Z_SOURCES_ZSTD}
  ${B7Z_SOURCES_FAST_LZMA2}
  ${B7Z_SOURCES_CONSOLE}
  "${BAULK7Z_DIR}/res/baulk7z.rc")

target_link_libraries(
  baulk7z
  ${zstdmt}
  oleaut32.lib
  ole32.lib
  user32.lib
  advapi32.lib
  shell32.lib)

set(BAULK7Z_DEF)
list(APPEND BAULK7Z_DEF -DWIN_LONG_PATH)
list(APPEND BAULK7Z_DEF -D_7ZIP_LARGE_PAGES)
list(APPEND BAULK7Z_DEF -DSUPPORT_DEVICE_FILE)
target_compile_definitions(baulk7z PRIVATE ${BAULK7Z_DEF} -D_CONSOLE)

set(B7ZG_SOURCES_GUI
    UI/GUI/BenchmarkDialog.obj
    UI/GUI/CompressDialog.obj
    UI/GUI/ExtractDialog.obj
    UI/GUI/ExtractGUI.obj
    UI/GUI/GUI.obj
    UI/GUI/HashGUI.obj
    UI/GUI/UpdateCallbackGUI.obj
    UI/GUI/UpdateCallbackGUI2.obj
    UI/GUI/UpdateGUI.obj)

set(B7ZG_SOURCES_WINDOWS
    ../Windows/Clipboard.obj
    ../Windows/CommonDialog.obj
    ../Windows/DLL.obj
    ../Windows/ErrorMsg.obj
    ../Windows/FileDir.obj
    ../Windows/FileFind.obj
    ../Windows/FileIO.obj
    ../Windows/FileLink.obj
    ../Windows/FileName.obj
    ../Windows/FileSystem.obj
    ../Windows/MemoryGlobal.obj
    ../Windows/MemoryLock.obj
    ../Windows/PropVariant.obj
    ../Windows/PropVariantConv.obj
    ../Windows/Registry.obj
    ../Windows/ResourceString.obj
    ../Windows/Shell.obj
    ../Windows/Synchronization.obj
    ../Windows/System.obj
    ../Windows/TimeUtils.obj
    ../Windows/Window.obj
    ../Windows/ComboBox.obj
    ../Windows/Dialog.obj
    ../Windows/ListView.obj)

set(B7ZG_SOURCES_7Z_UI_COMMON
    UI/Common/ArchiveCommandLine.obj
    UI/Common/ArchiveExtractCallback.obj
    UI/Common/ArchiveOpenCallback.obj
    UI/Common/Bench.obj
    UI/Common/DefaultName.obj
    UI/Common/EnumDirItems.obj
    UI/Common/Extract.obj
    UI/Common/ExtractingFilePath.obj
    UI/Common/HashCalc.obj
    UI/Common/LoadCodecs.obj
    UI/Common/OpenArchive.obj
    UI/Common/PropIDUtils.obj
    UI/Common/SetProperties.obj
    UI/Common/SortUtils.obj
    UI/Common/TempFiles.obj
    UI/Common/Update.obj
    UI/Common/UpdateAction.obj
    UI/Common/UpdateCallback.obj
    UI/Common/UpdatePair.obj
    UI/Common/UpdateProduce.obj
    UI/Common/WorkDir.obj
    UI/Common/ZipRegistry.obj)

set(BZ7G_SOURCES_FM
    UI/FileManager/EditDialog.obj
    UI/FileManager/ExtractCallback.obj
    UI/FileManager/FormatUtils.obj
    UI/FileManager/HelpUtils.obj
    UI/FileManager/LangUtils.obj
    UI/FileManager/ListViewDialog.obj
    UI/FileManager/OpenCallback.obj
    UI/FileManager/ProgramLocation.obj
    UI/FileManager/PropertyName.obj
    UI/FileManager/RegistryUtils.obj
    UI/FileManager/SplitUtils.obj
    UI/FileManager/StringUtils.obj
    UI/FileManager/OverwriteDialog.obj
    UI/FileManager/PasswordDialog.obj
    UI/FileManager/ProgressDialog2.obj
    UI/FileManager/BrowseDialog.obj
    UI/FileManager/ComboDialog.obj
    UI/FileManager/SysIconUtils.obj)

add_executable(
  baulk7zG
  ${B7Z_SOURCES_BASE_COMMON}
  ${B7Z_SOURCES_7Z_COMMON}
  ${B7ZG_SOURCES_7Z_UI_COMMON}
  ${BZ7G_SOURCES_FM}
  UI/Explorer/MyMessages.cpp
  ${B7Z_SOURCES_OPT}
  ${B7Z_SOURCES_C_FILES}
  ${B7Z_SOURCES_AR_COMMON}
  ${B7Z_SOURCES_AR_7Z}
  ${B7Z_SOURCES_AR_CAB}
  ${B7Z_SOURCES_AR_CHM}
  ${B7Z_SOURCES_AR_ISO}
  ${B7Z_SOURCES_AR_NSIS}
  ${B7Z_SOURCES_AR_RAR}
  ${B7Z_SOURCES_AR_TAR}
  ${B7Z_SOURCES_AR_UDF}
  ${B7Z_SOURCES_AR_WIM}
  ${B7Z_SOURCES_AR_ZIP}
  ${B7Z_SOURCES_COMPRESS}
  ${B7Z_SOURCES_CRYPTO}
  ${B7Z_SOURCES_BROTLI}
  ${B7Z_SOURCES_LIZARD}
  ${B7Z_SOURCES_LZ4}
  ${B7Z_SOURCES_LZ5}
  ${B7Z_SOURCES_ZSTD}
  ${B7Z_SOURCES_FAST_LZMA2}
  ${B7ZG_SOURCES_GUI}
  ${B7ZG_SOURCES_WINDOWS}
  UI/GUI/resource.rc)

target_link_libraries(
  baulk7zG
  ${zstdmt}
  oleaut32.lib
  ole32.lib
  user32.lib
  advapi32.lib
  shell32.lib
  comctl32.lib
  htmlhelp.lib
  comdlg32.lib
  gdi32.lib)

target_compile_definitions(baulk7zG PRIVATE ${BAULK7Z_DEF})
target_compile_definitions(baulk7zG PRIVATE ${BAULK7Z_DEF})

install(TARGETS baulk7z DESTINATION ".")
install(TARGETS baulk7zG DESTINATION ".")
