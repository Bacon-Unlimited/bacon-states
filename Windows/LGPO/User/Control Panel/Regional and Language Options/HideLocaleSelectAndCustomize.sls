# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the regional formats interface from the Region settings control panel.
# 
# This policy setting is used only to simplify the Regional and Language Options control panel.
# 
# If you enable this policy setting, the user does not see the regional formats options. This does not prevent the user or an application from changing their user locale or user overrides programmatically.
# 
# If you disable or do not configure this policy setting, the user sees the regional formats options for changing and customizing the user locale.
Hide user locale selection and customization options:
  lgpo.set:
  - name: HideLocaleSelectAndCustomize
  - setting: Enabled
  - policy_class: User
