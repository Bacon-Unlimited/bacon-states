# windows:SUPPORTED_Win2k
#
# Disables all Control Panel programs and the PC settings app.
# 
# This setting prevents Control.exe and SystemSettings.exe, the program files for Control Panel and PC settings, from starting. As a result, users cannot start Control Panel or PC settings, or run any of their items.
# 
# This setting removes Control Panel from:
# The Start screen
# File Explorer
# 
# This setting removes PC settings from:
# The Start screen
# Settings charm
# Account picture
# Search results
# 
# If users try to select a Control Panel item from the Properties item on a context menu, a message appears explaining that a setting prevents the action.
Prohibit access to Control Panel and PC settings:
  lgpo.set:
  - name: NoControlPanel
  - setting: Enabled
  - policy_class: User
