# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the option to change the user's menus and dialogs (UI) language from the Language and Regional Options control panel.
# 
# This policy setting is used only to simplify the Regional Options control panel.
# 
# If you enable this policy setting, the user does not see the option for changing the UI language. This does not prevent the user or an application from changing the UI language programmatically.
# 
# If you disable or do not configure this policy setting, the user sees the option for changing the UI language.
# 
# Note: Even if a user can see the option to change the UI language, other policy settings can prevent them from changing their UI language.
Hide the select language group options:
  lgpo.set:
  - name: HideLanguageSelection
  - setting: Enabled
  - policy_class: User
