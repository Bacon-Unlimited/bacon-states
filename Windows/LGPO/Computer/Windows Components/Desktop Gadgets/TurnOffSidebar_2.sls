# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to turn off desktop gadgets. Gadgets are small applets that display information or utilities on the  desktop.
# 
# If you enable this setting, desktop gadgets will be turned off.
# 
# If you disable or do not configure this setting, desktop gadgets will be turned on.
# 
# The default is for desktop gadgets to be turned on.
Turn off desktop gadgets:
  lgpo.set:
  - name: TurnOffSidebar_2
  - setting: Enabled
  - policy_class: Machine
