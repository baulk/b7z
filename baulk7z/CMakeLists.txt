# Baulk7z

# cmake
set(B7Z_SOURCES_BASE_COMMON
    ${BAULK7Z_DIR}/CPP/Common/CommandLineParser.cpp
    ${BAULK7Z_DIR}/CPP/Common/CRC.cpp
    ${BAULK7Z_DIR}/CPP/Common/IntToString.cpp
    ${BAULK7Z_DIR}/CPP/Common/ListFileUtils.cpp
    ${BAULK7Z_DIR}/CPP/Common/NewHandler.cpp
    ${BAULK7Z_DIR}/CPP/Common/StdInStream.cpp
    ${BAULK7Z_DIR}/CPP/Common/StdOutStream.cpp
    ${BAULK7Z_DIR}/CPP/Common/MyString.cpp
    ${BAULK7Z_DIR}/CPP/Common/StringConvert.cpp
    ${BAULK7Z_DIR}/CPP/Common/StringToInt.cpp
    ${BAULK7Z_DIR}/CPP/Common/UTFConvert.cpp
    ${BAULK7Z_DIR}/CPP/Common/MyVector.cpp
    ${BAULK7Z_DIR}/CPP/Common/MyXml.cpp
    ${BAULK7Z_DIR}/CPP/Common/MyMap.cpp
    ${BAULK7Z_DIR}/CPP/Common/Wildcard.cpp)

set(B7Z_SOURCES_WINDOWS
    ${BAULK7Z_DIR}/CPP/Windows/DLL.cpp
    ${BAULK7Z_DIR}/CPP/Windows/ErrorMsg.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileDir.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileFind.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileIO.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileLink.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileName.cpp
    ${BAULK7Z_DIR}/CPP/Windows/FileSystem.cpp
    ${BAULK7Z_DIR}/CPP/Windows/MemoryLock.cpp
    ${BAULK7Z_DIR}/CPP/Windows/PropVariant.cpp
    ${BAULK7Z_DIR}/CPP/Windows/PropVariantConv.cpp
    ${BAULK7Z_DIR}/CPP/Windows/PropVariantUtils.cpp
    ${BAULK7Z_DIR}/CPP/Windows/Synchronization.cpp
    ${BAULK7Z_DIR}/CPP/Windows/System.cpp
    ${BAULK7Z_DIR}/CPP/Windows/TimeUtils.cpp)

set(B7Z_SOURCES_7Z_COMMON
    ${BAULK7Z_DIR}/CPP/7zip/Common/CreateCoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/CWrappers.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/FileStreams.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/FilterCoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/InBuffer.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/InOutTempBuffer.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/LimitedStreams.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/MemBlocks.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/MethodId.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/MethodProps.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/OffsetStream.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/OutBuffer.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/OutMemStream.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/ProgressMt.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/ProgressUtils.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/PropId.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/StreamBinder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/StreamObjects.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/StreamUtils.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/UniqBlocks.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Common/VirtThread.cpp)

set(B7Z_SOURCES_UI_COMMON
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/ArchiveCommandLine.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/ArchiveOpenCallback.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/Bench.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/DefaultName.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/EnumDirItems.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/Extract.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/ExtractingFilePath.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/HashCalc.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/LoadCodecs.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/OpenArchive.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/PropIDUtils.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/SetProperties.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/SortUtils.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/TempFiles.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/Update.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/UpdateAction.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/UpdateCallback.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/UpdatePair.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Common/UpdateProduce.cpp)

set(B7Z_SOURCES_CONSOLE
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/BenchCon.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/ConsoleClose.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/ExtractCallbackConsole.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/HashCon.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/List.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/Main.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/MainAr.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/OpenCallbackConsole.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/PercentPrinter.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/UpdateCallbackConsole.cpp
    ${BAULK7Z_DIR}/CPP/7zip/UI/Console/UserInputUtils.cpp)

set(B7Z_SOURCES_OPT
    ${BAULK7Z_DIR}/C/Aes.c
    ${BAULK7Z_DIR}/C/AesOpt.c
    ${BAULK7Z_DIR}/C/7zCrc.c
    ${BAULK7Z_DIR}/C/7zCrcOpt.c
    ${BAULK7Z_DIR}/C/XzCrc64.c
    ${BAULK7Z_DIR}/C/XzCrc64Opt.c)

message(STATUS "detect ${B7Z_SOURCES_OPT}")

set(B7Z_SOURCES_AR_COMMON
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/CoderMixer2.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/DummyOutStream.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/FindSignature.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/HandlerOut.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/InStreamWithCRC.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/MultiStream.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/OutStreamWithSha1.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Common/ParseProperties.cpp)

set(B7Z_SOURCES_AR
    ${BAULK7Z_DIR}/CPP/7zip/Archive/Bz2Handler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/DeflateProps.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/GzHandler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/LzHandler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/LzmaHandler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/SplitHandler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/XzHandler.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Archive/HandlerCont.cpp)

file(GLOB B7Z_SOURCES_AR_7Z ${BAULK7Z_DIR}/CPP/7zip/Archive/7z/*.cpp)
file(GLOB B7Z_SOURCES_AR_CAB ${BAULK7Z_DIR}/CPP/7zip/Archive/Cab/*.cpp)
file(GLOB B7Z_SOURCES_AR_CHM ${BAULK7Z_DIR}/CPP/7zip/Archive/Chm/*.cpp)
file(GLOB B7Z_SOURCES_AR_ISO ${BAULK7Z_DIR}/CPP/7zip/Archive/Iso/*.cpp)
file(GLOB B7Z_SOURCES_AR_NSIS ${BAULK7Z_DIR}/CPP/7zip/Archive/Nsis/*.cpp)
file(GLOB B7Z_SOURCES_AR_RAR ${BAULK7Z_DIR}/CPP/7zip/Archive/Rar/*.cpp)
file(GLOB B7Z_SOURCES_AR_TAR ${BAULK7Z_DIR}/CPP/7zip/Archive/Tar/*.cpp)
file(GLOB B7Z_SOURCES_AR_UDF ${BAULK7Z_DIR}/CPP/7zip/Archive/Udf/*.cpp)
file(GLOB B7Z_SOURCES_AR_WIM ${BAULK7Z_DIR}/CPP/7zip/Archive/Wim/*.cpp)
file(GLOB B7Z_SOURCES_AR_ZIP ${BAULK7Z_DIR}/CPP/7zip/Archive/Zip/*.cpp)

set(B7Z_SOURCES_COMPRESS
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Bcj2Coder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Bcj2Register.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BcjCoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BcjRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BitlDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BranchMisc.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BranchRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ByteSwap.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BZip2Crc.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BZip2Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BZip2Encoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/BZip2Register.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/CopyCoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/CopyRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Deflate64Register.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/DeflateDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/DeflateEncoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/DeflateRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/DeltaFilter.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ImplodeDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzfseDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzhDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Lzma2Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Lzma2Encoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Lzma2Register.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzmaDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzmaEncoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzmaRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzmsDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzOutWindow.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/LzxDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/PpmdDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/PpmdEncoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/PpmdRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/PpmdZip.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/QuantumDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Rar1Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Rar2Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Rar3Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Rar3Vm.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/Rar5Decoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/RarCodecsRegister.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ShrinkDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/XpressDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/XzDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/XzEncoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ZlibDecoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ZlibEncoder.cpp
    ${BAULK7Z_DIR}/CPP/7zip/Compress/ZDecoder.cpp)

file(GLOB B7Z_SOURCES_${BAULK7Z_DIR}/CPP/7zip/CRYPTO Crypto/*.cpp)

set(B7Z_SOURCES_C_FILES
    ${BAULK7Z_DIR}/C/7zStream.c
    ${BAULK7Z_DIR}/C/Alloc.c
    ${BAULK7Z_DIR}/C/Bcj2.c
    ${BAULK7Z_DIR}/C/Bcj2Enc.c
    ${BAULK7Z_DIR}/C/Blake2s.c
    ${BAULK7Z_DIR}/C/Bra.c
    ${BAULK7Z_DIR}/C/Bra86.c
    ${BAULK7Z_DIR}/C/BraIA64.c
    ${BAULK7Z_DIR}/C/BwtSort.c
    ${BAULK7Z_DIR}/C/CpuArch.c
    ${BAULK7Z_DIR}/C/Delta.c
    ${BAULK7Z_DIR}/C/HuffEnc.c
    ${BAULK7Z_DIR}/C/LzFind.c
    ${BAULK7Z_DIR}/C/LzFindMt.c
    ${BAULK7Z_DIR}/C/Lzma2Dec.c
    ${BAULK7Z_DIR}/C/Lzma2DecMt.c
    ${BAULK7Z_DIR}/C/Lzma2Enc.c
    ${BAULK7Z_DIR}/C/LzmaDec.c
    ${BAULK7Z_DIR}/C/LzmaEnc.c
    ${BAULK7Z_DIR}/C/MtCoder.c
    ${BAULK7Z_DIR}/C/MtDec.c
    ${BAULK7Z_DIR}/C/Ppmd7.c
    ${BAULK7Z_DIR}/C/Ppmd7Dec.c
    ${BAULK7Z_DIR}/C/Ppmd7Enc.c
    ${BAULK7Z_DIR}/C/Ppmd8.c
    ${BAULK7Z_DIR}/C/Ppmd8Dec.c
    ${BAULK7Z_DIR}/C/Ppmd8Enc.c
    ${BAULK7Z_DIR}/C/Sha1.c
    ${BAULK7Z_DIR}/C/Sha256.c
    ${BAULK7Z_DIR}/C/Sort.c
    ${BAULK7Z_DIR}/C/Threads.c
    ${BAULK7Z_DIR}/C/Xz.c
    ${BAULK7Z_DIR}/C/XzDec.c
    ${BAULK7Z_DIR}/C/XzEnc.c
    ${BAULK7Z_DIR}/C/XzIn.c
    ${BAULK7Z_DIR}/C/DllSecur.c)

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
  ${B7Z_SOURCES_AR}
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

if(BAULK7Z_ENABLE_LTO)
  set_property(TARGET baulk7z PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
endif()

set(BAULK7Z_DEF)
list(APPEND BAULK7Z_DEF -DWIN_LONG_PATH)
list(APPEND BAULK7Z_DEF -D_7ZIP_LARGE_PAGES)
list(APPEND BAULK7Z_DEF -DSUPPORT_DEVICE_FILE)
list(APPEND BAULK7Z_DEF -DZSTD_MULTITHREAD)
target_compile_definitions(baulk7z PRIVATE ${BAULK7Z_DEF} -D_CONSOLE)
