# windows:SUPPORTED_WindowsVista
#
# This policy setting restricts the Windows UI language for all users.
# 
# This is a policy setting for computers with more than one UI language installed.
# 
# If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language will follow the language specified by the administrator as the system UI languages. The UI language selected by the user will be ignored if it is different than any of the system UI languages.
# 
# If you disable or do not configure this policy setting, the user can specify which UI language is used.
Restricts the UI language Windows uses for all logged users:
  lgpo.set:
  - name: LockMachineUILanguage
  - setting:
      UILangSelect: enum-placeholder
  - policy_class: Machine
