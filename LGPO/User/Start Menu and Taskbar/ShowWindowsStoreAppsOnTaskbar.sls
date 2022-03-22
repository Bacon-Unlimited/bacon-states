# windows:SUPPORTED_Windows_6_3
#
# 
# This policy setting allows users to see Windows Store apps on the taskbar.
#  
# If you enable this policy setting, users will see Windows Store apps on the taskbar.
#  
# If you disable this policy setting, users won’t see Windows Store apps on the taskbar.
#  
# If you don’t configure this policy setting, the default setting for the user’s device will be used, and the user can choose to change it.
Show Windows Store apps on the taskbar:
  lgpo.set:
  - name: ShowWindowsStoreAppsOnTaskbar
  - setting: Enabled
  - policy_class: User
