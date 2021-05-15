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
    ../Windows/Registry.cpp
    ../Windows/ResourceString.cpp
    ../Windows/Shell.cpp
    ../Windows/Synchronization.cpp
    ../Windows/System.cpp
    ../Windows/SystemInfo.cpp
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
