# windows:SUPPORTED_Win2k
#
# This policy setting restricts users to the specified language by disabling the menus and dialog box controls in the Region settings control panel. If the specified language is not installed on the target computer, the language selection defaults to English.
# 
# If you enable this policy setting, the dialog box controls in the Regional and Language Options control panel are not accessible to the logged on user. This prevents users from specifying a language different than the one used.
# 
# To enable this policy setting in Windows Vista, use the "Restricts the UI languages Windows should use for the selected user" policy setting.
# 
# If you disable or do not configure this policy setting, the logged-on user can access the dialog box controls in the Regional and Language Options control panel to select any available UI language.
Restrict selection of Windows menus and dialogs language:
  lgpo.set:
  - name: RestrictUILangSelect
  - setting:
      UILangSelect: enum-placeholder
  - policy_class: User
