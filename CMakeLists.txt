# baulk7z
cmake_minimum_required(VERSION 3.15)
project(baulk7z)
enable_language(ASM_MASM)

if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR AND NOT MSVC_IDE)
  message(
    FATAL_ERROR
      "In-source builds are not allowed.
CMake would overwrite the makefiles distributed with Baulk7z.
Please create a directory and run cmake from there, passing the path
to this source directory as the last argument.
This process created the file `CMakeCache.txt' and the directory `CMakeFiles'.
Please delete them.")
endif()

option(ENABLE_BAULK7Z_GUI "Enable baulk7z GUI" OFF)

if(MSVC)
  set(CMAKE_MSVC_RUNTIME_LIBRARY_DEFAULT "")
  # FIXME: This block should go away after a transition period.
  if(NOT CMAKE_VERSION VERSION_LESS 3.15)
    # Filter out MSVC runtime library flags that may have come from the cache of an existing build tree or from scripts.
    foreach(l C CXX)
      foreach(c DEBUG MINSIZEREL RELEASE RELWITHDEBINFO)
        string(REGEX REPLACE "[-/]M[DT]d?( |$)" "" "CMAKE_${l}_FLAGS_${c}" "${CMAKE_${l}_FLAGS_${c}}")
      endforeach()
    endforeach()
  endif()
  # http://stackoverflow.com/a/32128977/486990
  add_compile_options(
    "$<$<CONFIG:Debug>:/MTd>" # -MTd
    "$<$<CONFIG:RelWithDebInfo>:/MT>" # -MT
    "$<$<CONFIG:Release>:/MT>" # * MT
    "$<$<CONFIG:MinSizeRel>:/MT>")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -utf-8 -W3 -MP -GL -Gw -DUNICODE=1 -D_UNICODE=1 -permissive- -Zc:__cplusplus")
  set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}  -utf-8 -W3 -MP -GL -Gw -DUNICODE=1 -D_UNICODE=1")
  set(CMAKE_RC_FLAGS "${CMAKE_RC_FLAGS} -c65001")
else()
  add_compile_options("-g")
  add_compile_options("-Wall")
  add_compile_options("-Wextra")
  if(USE_SANITIZE)
    add_compile_options("-fsanitize=address")
    add_compile_options("-fno-omit-frame-pointer")
    set(CMAKE_EXE_LINKER_FLAGS "-fsanitize=address ")
  endif()
endif()


set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

set(BAULK_VERSION_MAJOR 20)
set(BAULK_VERSION_MINOR 0)
set(BAULK_VERSION_PATCH 0)
set(PACKAGE_VERSION "${BAULK_VERSION_MAJOR}.${BAULK_VERSION_MINOR}.${BAULK_VERSION_PATCH}")

set(CPACK_PACKAGE_NAME "Baulk7z")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "Baulk7z")
set(CPACK_PACKAGE_VERSION_MAJOR ${BAULK_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${BAULK_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${BAULK_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION ${PACKAGE_VERSION})
if("${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "ARM64" OR "${CMAKE_C_COMPILER_ARCHITECTURE_ID}" STREQUAL "ARM")
  set(CPACK_SYSTEM_NAME "windows-${CMAKE_C_COMPILER_ARCHITECTURE_ID}")
endif()
set(CPACK_PACKAGE_VENDOR "Baulk7z")
set(CPACK_PACKAGE_CONTACT "Baulk contributors")

include(CPack)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

set(BAULK_ENABLE_LTO OFF)
include(CheckIPOSupported)
check_ipo_supported(RESULT lto_supported OUTPUT error)
if(lto_supported)
  message(STATUS "IPO/LTO supported")
  if(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(BAULK_ENABLE_LTO ON)
    message(STATUS "IPO/LTO enabled")
  endif()
endif()

set(BAULK7Z_DIR ${CMAKE_CURRENT_SOURCE_DIR})
add_subdirectory(CPP)