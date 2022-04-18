# windows:SUPPORTED_WindowsVista
#
# This policy setting restricts the Windows UI language for specific users.
# 
# This policy setting applies to computers with more than one UI language installed.
# 
# If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language for the selected user. If the specified language is not installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the user.
# 
# If you disable or do not configure this policy setting, there is no restriction on which language users should use.
# 
# To enable this policy setting in Windows Server 2003, Windows XP, or Windows 2000, to use the "Restrict selection of Windows menus and dialogs language" policy setting.
Restricts the UI languages Windows should use for the selected user:
  lgpo.set:
  - name: LockUserUILanguage
  - setting:
      UILangSelect: enum-placeholder
  - policy_class: User
