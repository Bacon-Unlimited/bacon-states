# windows:SUPPORTED_WindowsVistaOnly
#
# This policy setting controls whether the QuickLaunch bar is displayed in the Taskbar.
# 
# If you enable this policy setting, the QuickLaunch bar will be visible and cannot be turned off.
# 
# If you disable this policy setting, the QuickLaunch bar will be hidden and cannot be turned on.
# 
# If you do not configure this policy setting, then users will be able to turn the QuickLaunch bar on and off.
Show QuickLaunch on Taskbar:
  lgpo.set:
  - name: QuickLaunchEnabled
  - setting: Enabled
  - policy_class: User
