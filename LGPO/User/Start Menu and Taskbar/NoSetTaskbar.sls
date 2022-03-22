# windows:SUPPORTED_Win2k
#
# This policy setting allows you to prevent changes to Taskbar and Start Menu Settings.
# 
# If you enable this policy setting, The user will be prevented from opening the Taskbar Properties dialog box.
# 
# If the user right-clicks the taskbar and then clicks Properties, a message appears explaining that a setting prevents the action.
# 
# If you disable or do not configure this policy setting, the Taskbar and Start Menu items are available from Settings on the Start menu.
Prevent changes to Taskbar and Start Menu Settings:
  lgpo.set:
  - name: NoSetTaskbar
  - setting: Enabled
  - policy_class: User
