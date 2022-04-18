# windows:SUPPORTED_Windows7
#
# Enable this setting to prevent the OneDrive sync client (OneDrive.exe) from generating network traffic (checking for updates, etc.) until the user signs in to OneDrive or starts syncing files to the local computer.
# 
# If you enable this setting, users must sign in to the OneDrive sync client on the local computer, or select to sync OneDrive or SharePoint files on the computer, for the sync client to start automatically.
# 
# If this setting is not enabled, the OneDrive sync client will start automatically when users sign in to Windows.
# 
# If you enable or disable this setting, do not return the setting to Not Configured. Doing so will not change the configuration and the last configured setting will remain in effect.
Prevent OneDrive from generating network traffic until the user signs in to OneDrive:
  lgpo.set:
  - name: PreventNetworkTrafficPreUserSignIn
  - setting: Enabled
  - policy_class: Machine
