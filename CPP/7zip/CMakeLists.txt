# cmake
set(B7Z_SOURCES_BASE_COMMON
    ../Common/CommandLineParser.cpp
    ../Common/CRC.cpp
    ../Common/IntToString.cpp
    ../Common/ListFileUtils.cpp
    ../Common/NewHandler.cpp
    ../Common/StdInStream.cpp
    ../Common/StdOutStream.cpp
    ../Common/MyString.cpp
    ../Common/StringConvert.cpp
    ../Common/StringToInt.cpp
    ../Common/UTFConvert.cpp
    ../Common/MyVector.cpp
    ../Common/MyXml.cpp
    ../Common/MyMap.cpp
    ../Common/Wildcard.cpp)

set(B7Z_SOURCES_WINDOWS
    ../Windows/DLL.cpp
    ../Windows/ErrorMsg.cpp
    ../Windows/FileDir.cpp
    ../Windows/FileFind.cpp
    ../Windows/FileIO.cpp
    ../Windows/FileLink.cpp
    ../Windows/FileName.cpp
    ../Windows/FileSystem.cpp
    ../Windows/MemoryLock.cpp
    ../Windows/PropVariant.cpp
    ../Windows/PropVariantConv.cpp
    ../Windows/PropVariantUtils.cpp
    ../Windows/Synchronization.cpp
    ../Windows/System.cpp
    ../Windows/TimeUtils.cpp)

set(B7Z_SOURCES_7Z_COMMON
    Common/CreateCoder.cpp
    Common/CWrappers.cpp
    Common/FilePathAutoRename.cpp
    Common/FileStreams.cpp
    Common/FilterCoder.cpp
    Common/InBuffer.cpp
    Common/InOutTempBuffer.cpp
    Common/LimitedStreams.cpp
    Common/MemBlocks.cpp
    Common/MethodId.cpp
    Common/MethodProps.cpp
    Common/OffsetStream.cpp
    Common/OutBuffer.cpp
    Common/OutMemStream.cpp
    Common/ProgressMt.cpp
    Common/ProgressUtils.cpp
    Common/PropId.cpp
    Common/StreamBinder.cpp
    Common/StreamObjects.cpp
    Common/StreamUtils.cpp
    Common/UniqBlocks.cpp
    Common/VirtThread.cpp)

set(B7Z_SOURCES_UI_COMMON
    UI/Common/ArchiveCommandLine.cpp
    UI/Common/ArchiveExtractCallback.cpp
    UI/Common/ArchiveOpenCallback.cpp
    UI/Common/Bench.cpp
    UI/Common/DefaultName.cpp
    UI/Common/EnumDirItems.cpp
    UI/Common/Extract.cpp
    UI/Common/ExtractingFilePath.cpp
    UI/Common/HashCalc.cpp
    UI/Common/LoadCodecs.cpp
    UI/Common/OpenArchive.cpp
    UI/Common/PropIDUtils.cpp
    UI/Common/SetProperties.cpp
    UI/Common/SortUtils.cpp
    UI/Common/TempFiles.cpp
    UI/Common/Update.cpp
    UI/Common/UpdateAction.cpp
    UI/Common/UpdateCallback.cpp
    UI/Common/UpdatePair.cpp
    UI/Common/UpdateProduce.cpp)

set(B7Z_SOURCES_CONSOLE
    UI/Console/BenchCon.cpp
    UI/Console/ConsoleClose.cpp
    UI/Console/ExtractCallbackConsole.cpp
    UI/Console/HashCon.cpp
    UI/Console/List.cpp
    UI/Console/Main.cpp
    UI/Console/MainAr.cpp
    UI/Console/OpenCallbackConsole.cpp
    UI/Console/PercentPrinter.cpp
    UI/Console/UpdateCallbackConsole.cpp
    UI/Console/UserInputUtils.cpp)

set(B7Z_SOURCES_OPT
    ${BAULK7Z_DIR}/C/Aes.c
    ${BAULK7Z_DIR}/C/AesOpt.c
    ${BAULK7Z_DIR}/C/7zCrc.c
    ${BAULK7Z_DIR}/C/7zCrcOpt.c
    ${BAULK7Z_DIR}/C/XzCrc64.c
    ${BAULK7Z_DIR}/C/XzCrc64Opt.c)

message(STATUS "detect ${B7Z_SOURCES_OPT}")

set(B7Z_SOURCES_AR_COMMON
    Archive/Common/CoderMixer2.cpp
    Archive/Common/DummyOutStream.cpp
    Archive/Common/FindSignature.cpp
    Archive/Common/HandlerOut.cpp
    Archive/Common/InStreamWithCRC.cpp
    Archive/Common/ItemNameUtils.cpp
    Archive/Common/MultiStream.cpp
    Archive/Common/OutStreamWithCRC.cpp
    Archive/Common/OutStreamWithSha1.cpp
    Archive/Common/ParseProperties.cpp)

set(B7Z_SOURCES_AR
    Archive/Bz2Handler.cpp
    Archive/DeflateProps.cpp
    Archive/GzHandler.cpp
    Archive/LzHandler.cpp
    Archive/LzmaHandler.cpp
    Archive/SplitHandler.cpp
    Archive/XzHandler.cpp
    Archive/ZstdHandler.cpp
    Archive/HandlerCont.cpp)

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
    Compress/Bcj2Coder.cpp
    Compress/Bcj2Register.cpp
    Compress/BcjCoder.cpp
    Compress/BcjRegister.cpp
    Compress/BitlDecoder.cpp
    Compress/BranchMisc.cpp
    Compress/BranchRegister.cpp
    Compress/ByteSwap.cpp
    Compress/BZip2Crc.cpp
    Compress/BZip2Decoder.cpp
    Compress/BZip2Encoder.cpp
    Compress/BZip2Register.cpp
    Compress/CopyCoder.cpp
    Compress/CopyRegister.cpp
    Compress/Deflate64Register.cpp
    Compress/DeflateDecoder.cpp
    Compress/DeflateEncoder.cpp
    Compress/DeflateRegister.cpp
    Compress/DeltaFilter.cpp
    Compress/ImplodeDecoder.cpp
    Compress/LzfseDecoder.cpp
    Compress/LzhDecoder.cpp
    Compress/Lzma2Decoder.cpp
    Compress/Lzma2Encoder.cpp
    Compress/Lzma2Register.cpp
    Compress/LzmaDecoder.cpp
    Compress/LzmaEncoder.cpp
    Compress/LzmaRegister.cpp
    Compress/LzmsDecoder.cpp
    Compress/LzOutWindow.cpp
    Compress/LzxDecoder.cpp
    Compress/PpmdDecoder.cpp
    Compress/PpmdEncoder.cpp
    Compress/PpmdRegister.cpp
    Compress/PpmdZip.cpp
    Compress/QuantumDecoder.cpp
    Compress/Rar1Decoder.cpp
    Compress/Rar2Decoder.cpp
    Compress/Rar3Decoder.cpp
    Compress/Rar3Vm.cpp
    Compress/Rar5Decoder.cpp
    Compress/RarCodecsRegister.cpp
    Compress/ShrinkDecoder.cpp
    Compress/XpressDecoder.cpp
    Compress/XzDecoder.cpp
    Compress/XzEncoder.cpp
    Compress/ZlibDecoder.cpp
    Compress/ZlibEncoder.cpp
    Compress/ZDecoder.cpp
    Compress/ZstdDecoder.cpp
    Compress/ZstdEncoder.cpp
    Compress/ZstdRegister.cpp)

file(GLOB B7Z_SOURCES_CRYPTO Crypto/*.cpp)

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
install(TARGETS baulk7z DESTINATION .)


set(B7ZG_SOURCES_GUI
    UI/GUI/BenchmarkDialog.cpp
    UI/GUI/CompressDialog.cpp
    UI/GUI/ExtractDialog.cpp
    UI/GUI/ExtractGUI.cpp
    UI/GUI/GUI.cpp
    UI/GUI/HashGUI.cpp
    UI/GUI/UpdateCallbackGUI.cpp
    UI/GUI/UpdateCallbackGUI2.cpp
    UI/GUI/UpdateGUI.cpp)

set(B7ZG_SOURCES_WINDOWS
    ../Windows/Clipboard.cpp
    ../Windows/CommonDialog.cpp
    ../Windows/DLL.cpp
    ../Windows/ErrorMsg.cpp
    ../Windows/FileDir.cpp
    ../Windows/FileFind.cpp
    ../Windows/FileIO.cpp
    ../Windows/FileLink.cpp
    ../Windows/FileName.cpp
    ../Windows/FileSystem.cpp
    ../Windows/MemoryGlobal.cpp
    ../Windows/MemoryLock.cpp
    ../Windows/PropVariant.cpp
    ../Windows/PropVariantConv.cpp
    ../Windows/PropVariantUtils.cpp
    ../Windows/Registry.cpp
    ../Windows/ResourceString.cpp
    ../Windows/Shell.cpp
    ../Windows/Synchronization.cpp
    ../Windows/System.cpp
    ../Windows/TimeUtils.cpp
    ../Windows/Window.cpp
    ../Windows/Control/ComboBox.cpp
    ../Windows/Control/Dialog.cpp
    ../Windows/Control/ListView.cpp)

set(B7ZG_SOURCES_7Z_UI_COMMON
    UI/Common/ArchiveCommandLine.cpp
    UI/Common/ArchiveExtractCallback.cpp
    UI/Common/ArchiveOpenCallback.cpp
    UI/Common/Bench.cpp
    UI/Common/DefaultName.cpp
    UI/Common/EnumDirItems.cpp
    UI/Common/Extract.cpp
    UI/Common/ExtractingFilePath.cpp
    UI/Common/HashCalc.cpp
    UI/Common/LoadCodecs.cpp
    UI/Common/OpenArchive.cpp
    UI/Common/PropIDUtils.cpp
    UI/Common/SetProperties.cpp
    UI/Common/SortUtils.cpp
    UI/Common/TempFiles.cpp
    UI/Common/Update.cpp
    UI/Common/UpdateAction.cpp
    UI/Common/UpdateCallback.cpp
    UI/Common/UpdatePair.cpp
    UI/Common/UpdateProduce.cpp
    UI/Common/WorkDir.cpp
    UI/Common/ZipRegistry.cpp)

set(BZ7G_SOURCES_FM
    UI/FileManager/EditDialog.cpp
    UI/FileManager/ExtractCallback.cpp
    UI/FileManager/FormatUtils.cpp
    UI/FileManager/HelpUtils.cpp
    UI/FileManager/LangUtils.cpp
    UI/FileManager/ListViewDialog.cpp
    UI/FileManager/OpenCallback.cpp
    UI/FileManager/ProgramLocation.cpp
    UI/FileManager/PropertyName.cpp
    UI/FileManager/RegistryUtils.cpp
    UI/FileManager/SplitUtils.cpp
    UI/FileManager/StringUtils.cpp
    UI/FileManager/OverwriteDialog.cpp
    UI/FileManager/PasswordDialog.cpp
    UI/FileManager/ProgressDialog2.cpp
    UI/FileManager/BrowseDialog.cpp
    UI/FileManager/ComboDialog.cpp
    UI/FileManager/SysIconUtils.cpp)

add_executable(
  baulk7zG
  WIN32
  ../Common/Lang.cpp
  ${B7Z_SOURCES_BASE_COMMON}
  ${B7Z_SOURCES_7Z_COMMON}
  ${B7ZG_SOURCES_7Z_UI_COMMON}
  ${BZ7G_SOURCES_FM}
  UI/Explorer/MyMessages.cpp
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

target_compile_definitions(baulk7zG PRIVATE ${BAULK7Z_DEF} -DLANG)

install(TARGETS baulk7zG DESTINATION ".")

set(BZ7FM_SOURCES
    UI/FileManager/App.cpp
    UI/FileManager/BrowseDialog.cpp
    UI/FileManager/ClassDefs.cpp
    UI/FileManager/EnumFormatEtc.cpp
    UI/FileManager/ExtractCallback.cpp
    UI/FileManager/FileFolderPluginOpen.cpp
    UI/FileManager/FilePlugins.cpp
    UI/FileManager/FM.cpp
    UI/FileManager/FoldersPage.cpp
    UI/FileManager/FormatUtils.cpp
    UI/FileManager/FSFolder.cpp
    UI/FileManager/FSFolderCopy.cpp
    UI/FileManager/HelpUtils.cpp
    UI/FileManager/LangUtils.cpp
    UI/FileManager/MenuPage.cpp
    UI/FileManager/MyLoadMenu.cpp
    UI/FileManager/OpenCallback.cpp
    UI/FileManager/OptionsDialog.cpp
    UI/FileManager/Panel.cpp
    UI/FileManager/PanelCopy.cpp
    UI/FileManager/PanelCrc.cpp
    UI/FileManager/PanelDrag.cpp
    UI/FileManager/PanelFolderChange.cpp
    UI/FileManager/PanelItemOpen.cpp
    UI/FileManager/PanelItems.cpp
    UI/FileManager/PanelKey.cpp
    UI/FileManager/PanelListNotify.cpp
    UI/FileManager/PanelMenu.cpp
    UI/FileManager/PanelOperations.cpp
    UI/FileManager/PanelSelect.cpp
    UI/FileManager/PanelSort.cpp
    UI/FileManager/PanelSplitFile.cpp
    UI/FileManager/ProgramLocation.cpp
    UI/FileManager/PropertyName.cpp
    UI/FileManager/RegistryAssociations.cpp
    UI/FileManager/RegistryPlugins.cpp
    UI/FileManager/RegistryUtils.cpp
    UI/FileManager/RootFolder.cpp
    UI/FileManager/SplitUtils.cpp
    UI/FileManager/StringUtils.cpp
    UI/FileManager/SysIconUtils.cpp
    UI/FileManager/TextPairs.cpp
    UI/FileManager/UpdateCallback100.cpp
    UI/FileManager/ViewSettings.cpp
    UI/FileManager/AboutDialog.cpp
    UI/FileManager/ComboDialog.cpp
    UI/FileManager/CopyDialog.cpp
    UI/FileManager/EditDialog.cpp
    UI/FileManager/EditPage.cpp
    UI/FileManager/LangPage.cpp
    UI/FileManager/ListViewDialog.cpp
    UI/FileManager/MessagesDialog.cpp
    UI/FileManager/OverwriteDialog.cpp
    UI/FileManager/PasswordDialog.cpp
    UI/FileManager/ProgressDialog2.cpp
    UI/FileManager/SettingsPage.cpp
    UI/FileManager/SplitDialog.cpp
    UI/FileManager/SystemPage.cpp
    UI/FileManager/AltStreamsFolder.cpp
    UI/FileManager/FSDrives.cpp
    UI/FileManager/LinkDialog.cpp
    UI/FileManager/NetFolder.cpp
    UI/Agent/Agent.cpp
    UI/Agent/AgentOut.cpp
    UI/Agent/AgentProxy.cpp
    UI/Agent/ArchiveFolder.cpp
    UI/Agent/ArchiveFolderOpen.cpp
    UI/Agent/ArchiveFolderOut.cpp
    UI/Agent/UpdateCallbackAgent.cpp
    UI/Explorer/ContextMenu.cpp
    UI/Explorer/RegistryContextMenu.cpp
    ../Windows/Clipboard.cpp
    ../Windows/CommonDialog.cpp
    ../Windows/DLL.cpp
    ../Windows/ErrorMsg.cpp
    ../Windows/FileDir.cpp
    ../Windows/FileFind.cpp
    ../Windows/FileIO.cpp
    ../Windows/FileLink.cpp
    ../Windows/FileName.cpp
    ../Windows/MemoryGlobal.cpp
    ../Windows/MemoryLock.cpp
    ../Windows/Menu.cpp
    ../Windows/ProcessUtils.cpp
    ../Windows/PropVariant.cpp
    ../Windows/PropVariantUtils.cpp
    ../Windows/PropVariantConv.cpp
    ../Windows/Registry.cpp
    ../Windows/ResourceString.cpp
    ../Windows/Shell.cpp
    ../Windows/Synchronization.cpp
    ../Windows/System.cpp
    ../Windows/TimeUtils.cpp
    ../Windows/Window.cpp
    ../Windows/FileSystem.cpp
    ../Windows/Net.cpp
    ../Windows/SecurityUtils.cpp
    ../Windows/Control/ComboBox.cpp
    ../Windows/Control/Dialog.cpp
    ../Windows/Control/ListView.cpp
    ../Windows/Control/PropertyPage.cpp
    ../Windows/Control/Window2.cpp
    ../Common/Random.cpp
    UI/Common/Bench.cpp
    UI/Common/ArchiveCommandLine.cpp
    UI/Common/ArchiveExtractCallback.cpp
    UI/Common/ArchiveName.cpp
    UI/Common/ArchiveOpenCallback.cpp
    UI/Common/CompressCall.cpp
    UI/Common/DefaultName.cpp
    UI/Common/EnumDirItems.cpp
    UI/Common/ExtractingFilePath.cpp
    UI/Common/HashCalc.cpp
    UI/Common/LoadCodecs.cpp
    UI/Common/OpenArchive.cpp
    UI/Common/PropIDUtils.cpp
    UI/Common/SetProperties.cpp
    UI/Common/SortUtils.cpp
    UI/Common/UpdateAction.cpp
    UI/Common/UpdateCallback.cpp
    UI/Common/UpdatePair.cpp
    UI/Common/Update.cpp
    UI/Common/UpdateProduce.cpp
    UI/Common/WorkDir.cpp
    UI/Common/Extract.cpp
    UI/Common/TempFiles.cpp
    UI/Common/ZipRegistry.cpp
    UI/GUI/BenchmarkDialog.cpp
    UI/GUI/CompressDialog.cpp
    UI/GUI/ExtractDialog.cpp
    UI/GUI/ExtractGUI.cpp
    UI/GUI/HashGUI.cpp
    UI/GUI/UpdateCallbackGUI.cpp
    UI/GUI/UpdateCallbackGUI2.cpp
    UI/GUI/UpdateGUI.cpp)

add_executable(
  baulk7zFM
  WIN32
  ../Common/Lang.cpp
  ${B7Z_SOURCES_BASE_COMMON}
  ${B7Z_SOURCES_7Z_COMMON}
  ${BZ7FM_SOURCES}
  UI/Explorer/MyMessages.cpp
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
  UI/FileManager/resource.rc)

target_link_libraries(
  baulk7zFM
  ${zstdmt}
  oleaut32.lib
  ole32.lib
  user32.lib
  advapi32.lib
  shell32.lib
  comctl32.lib
  htmlhelp.lib
  comdlg32.lib
  gdi32.lib
  Mpr.lib)

target_compile_definitions(baulk7zFM PRIVATE ${BAULK7Z_DEF} -DLANG -DNEW_FOLDER_INTERFACE)