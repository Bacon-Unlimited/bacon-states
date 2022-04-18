# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the Administrative options from the Region settings control panel.  Administrative options include interfaces for setting system locale and copying settings to the default user. This policy setting does not, however, prevent an administrator or another application from changing these values programmatically.
# 
# This policy setting is used only to simplify the Regional Options control panel.
# 
# If you enable this policy setting, the user cannot see the Administrative options.
# 
# If you disable or do not configure this policy setting, the user can see the Administrative options.
# 
# Note: Even if a user can see the Administrative options, other policies may prevent them from modifying the values.
Hide Regional and Language Options administrative options:
  lgpo.set:
  - name: HideAdminOptions
  - setting: Enabled
  - policy_class: User
