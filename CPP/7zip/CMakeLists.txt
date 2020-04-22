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

set(B7Z_SOURCES_OTHERS
    Archive/Common/OutStreamWithCRC.cpp
    Compress/CopyCoder.cpp
    "${BAULK7Z_DIR}/C/Alloc.obj"
    "${BAULK7Z_DIR}/C/CpuArch.obj"
    "${BAULK7Z_DIR}/C/Sort.obj"
    "${BAULK7Z_DIR}/C/Threads.obj")

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

set(B7Z_SOURCES_CRC)
if("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x86_64"
   OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "AMD64"
   OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x64"
   OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "x86")
  set(B7Z_SOURCES_CRC ${BAULK7Z_DIR}/Asm/x86/7zCrcOpt.asm)
elseif("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "arm" or "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "arm64")
  set(B7Z_SOURCES_CRC ${BAULK7Z_DIR}/Asm/arm/7zCrcOpt.asm)
else()
  set(B7Z_SOURCES_CRC ${BAULK7Z_DIR}/C/7zCrcOpt.c)
endif()

add_executable(
  baulk7z
  ${B7Z_SOURCES_BASE_COMMON}
  ${B7Z_SOURCES_WINDOWS}
  ${B7Z_SOURCES_7Z_COMMON}
  ${B7Z_SOURCES_UI_COMMON}
  ${B7Z_SOURCES_OTHERS}
  ${B7Z_SOURCES_CONSOLE}
  "${BAULK7Z_DIR}/res/baulk7z.rc")

target_link_libraries(
  baulk7z
  oleaut32.lib
  ole32.lib
  user32.lib
  advapi32.lib
  shell32.lib)

set(BAULK7Z_DEF)
list(APPEND BAULK7Z_DEF -DWIN_LONG_PATH)
list(APPEND BAULK7Z_DEF -D_7ZIP_LARGE_PAGES)
list(APPEND BAULK7Z_DEF -DSUPPORT_DEVICE_FILE)
list(APPEND BAULK7Z_DEF -DEXTERNAL_CODECS)

target_compile_definitions(baulk7z PRIVATE ${BAULK7Z_DEF})

if(ENABLE_BAULK7Z_GUI)
  add_executable(baulk7zG ${B7Z_SOURCES_COMMON})
  target_link_libraries(
    baulk7zG
    comctl32.lib
    htmlhelp.lib
    comdlg32.lib
    gdi32.lib)
endif()
