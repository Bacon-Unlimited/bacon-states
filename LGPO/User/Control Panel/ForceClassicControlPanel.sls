# windows:SUPPORTED_WindowsXP
#
# This policy setting controls the default Control Panel view, whether by category or icons. 
# 
# If this policy setting is enabled, the Control Panel opens to the icon view.
# 
# If this policy setting is disabled, the Control Panel opens to the category view.
# 
# If this policy setting is not configured, the Control Panel opens to the view used in the last Control Panel session.
# Note: Icon size is dependent upon what the user has set it to in the previous session.
Always open All Control Panel Items when opening Control Panel:
  lgpo.set:
  - name: ForceClassicControlPanel
  - setting: Enabled
  - policy_class: User
