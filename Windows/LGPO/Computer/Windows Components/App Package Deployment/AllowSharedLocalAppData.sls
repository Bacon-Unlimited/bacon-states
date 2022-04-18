# windows:SUPPORTED_Windows_10_0
#
# Manages a Windows app's ability to share data between users who have installed the app.
# 
#         If you enable this policy, a Windows app can share app data with other instances of that app. Data is shared through the SharedLocal folder. This folder is available through the Windows.Storage API.
# 
#         If you disable this policy, a Windows app can't share app data with other instances of that app. If this policy was previously enabled, any previously shared app data will remain in the SharedLocal folder.
#       
Allow a Windows app to share application data between users:
  lgpo.set:
  - name: AllowSharedLocalAppData
  - setting: Enabled
  - policy_class: Machine
