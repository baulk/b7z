/*
 * PROJECT:   NanaZip
 * FILE:      ModernWin32MessageBox.cpp
 * PURPOSE:   Implementation for Modern Win32 Message Box
 *
 * LICENSE:   The MIT License
 *
 * DEVELOPER: Mouri_Naruto (Mouri_Naruto AT Outlook.com)
 */
#include "StdAfx.h"
#include <Windows.h>
#include <CommCtrl.h>
#pragma comment(lib, "comctl32.lib")

int WINAPI OriginalMessageBoxW(_In_opt_ HWND hWnd, _In_opt_ LPCWSTR lpText, _In_opt_ LPCWSTR lpCaption,
                               _In_ UINT uType) {
  static decltype(MessageBoxW) *volatile pMessageBoxW =
      reinterpret_cast<decltype(MessageBoxW) *>(::GetProcAddress(::GetModuleHandleW(L"user32.dll"), "MessageBoxW"));
  if (pMessageBoxW) {
    return pMessageBoxW(hWnd, lpText, lpCaption, uType);
  } else {
    ::SetLastError(ERROR_CALL_NOT_IMPLEMENTED);
    return 0;
  }
}

#define IDI_ICON_DEFAULT 1

constexpr auto pszExpandedInfo = L"For more information about this tool. \nVisit: <a "
                                 L"href=\"https://github.com/baulk/b7z\">7-Zip [Baulk flavor]</"
                                 L"a>\nVisit: <a "
                                 L"href=\"https://forcemz.net/\">forcemz.net</a>";
constexpr auto TKDWFLAGSEX = TDF_ALLOW_DIALOG_CANCELLATION | TDF_POSITION_RELATIVE_TO_WINDOW | TDF_SIZE_TO_CONTENT |
                             TDF_EXPAND_FOOTER_AREA | TDF_ENABLE_HYPERLINKS;

EXTERN_C int WINAPI ModernMessageBoxW(_In_opt_ HWND hWnd, _In_opt_ LPCWSTR lpText, _In_opt_ LPCWSTR lpCaption,
                                      _In_ UINT uType) {
  if (uType != (uType & (MB_ICONMASK | MB_TYPEMASK))) {
    return ::OriginalMessageBoxW(hWnd, lpText, lpCaption, uType);
  }
  TASKDIALOGCONFIG tc = {0};
  tc.cbSize = sizeof(TASKDIALOGCONFIG);
  tc.hwndParent = hWnd;
  tc.pszWindowTitle = lpCaption;
  tc.pszMainInstruction = lpText;
  tc.pszExpandedInformation = pszExpandedInfo;
  tc.dwFlags = TKDWFLAGSEX;

  switch (uType & MB_TYPEMASK) {
  case MB_OK:
    tc.dwCommonButtons = TDCBF_OK_BUTTON;
    break;
  case MB_OKCANCEL:
    tc.dwCommonButtons = TDCBF_OK_BUTTON | TDCBF_CANCEL_BUTTON;
    break;
  case MB_YESNOCANCEL:
    tc.dwCommonButtons = TDCBF_YES_BUTTON | TDCBF_NO_BUTTON | TDCBF_CANCEL_BUTTON;
    break;
  case MB_YESNO:
    tc.dwCommonButtons = TDCBF_YES_BUTTON | TDCBF_NO_BUTTON;
    break;
  case MB_RETRYCANCEL:
    tc.dwCommonButtons = TDCBF_RETRY_BUTTON | TDCBF_CANCEL_BUTTON;
    break;
  default:
    return ::OriginalMessageBoxW(hWnd, lpText, lpCaption, uType);
  }

  switch (uType & MB_ICONMASK) {
  case MB_ICONHAND:
    tc.pszMainIcon = TD_ERROR_ICON;
    break;
  case MB_ICONQUESTION:
    tc.dwFlags |= TDF_USE_HICON_MAIN;
    tc.hMainIcon = ::LoadIconW(nullptr, IDI_QUESTION);
    break;
  case MB_ICONEXCLAMATION:
    tc.pszMainIcon = TD_WARNING_ICON;
    break;
  case MB_ICONASTERISK:
    tc.pszMainIcon = TD_INFORMATION_ICON;
    break;
  default:
    if (hWnd != nullptr) {
      auto hIcon = reinterpret_cast<HICON>(SendMessageW(hWnd, WM_GETICON, ICON_BIG, 0));
      if (hIcon != nullptr) {
        tc.hMainIcon = hIcon;
        tc.dwFlags |= TDF_USE_HICON_MAIN;
      }
    } else {
      auto hIcon = reinterpret_cast<HICON>(LoadIconW(GetModuleHandleW(nullptr), MAKEINTRESOURCEW(IDI_ICON_DEFAULT)));
      if (hIcon != nullptr) {
        tc.hMainIcon = hIcon;
        tc.dwFlags |= TDF_USE_HICON_MAIN;
      }
    }
    break;
  }

  int ButtonID = 0;

  HRESULT hr = ::TaskDialogIndirect(&tc, &ButtonID, nullptr, nullptr);

  if (ButtonID == 0) {
    ::SetLastError(hr);
  }

  return ButtonID;
}

#if defined(_M_IX86)
// #pragma warning(suppress : 4483)
// extern "C" __declspec(selectany) void const *const
//     __identifier("_imp__MessageBoxW@16") = reinterpret_cast<void const *>(::ModernMessageBoxW);
// #pragma comment(linker, "/include:__imp__MessageBoxW@16")
#else
extern "C" __declspec(selectany) void const *const __imp_MessageBoxW =
    reinterpret_cast<void const *>(::ModernMessageBoxW);
#pragma comment(linker, "/include:__imp_MessageBoxW")
#endif
