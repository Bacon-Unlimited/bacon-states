# windows:SUPPORTED_Windows8
#
# Enables or disables the automatic download of app updates on PCs running Windows 8.
# 
# If you enable this setting, the automatic download of app updates is turned off.
# 
# If you disable this setting, the automatic download of app updates is turned on.
# 
# If you don't configure this setting, the automatic download of app updates is determined by a registry setting that the user can change using Settings in the Microsoft Store.
Turn off Automatic Download of updates on Win8 machines:
  lgpo.set:
  - name: DisableAutoDownloadWin8
  - setting: Enabled
  - policy_class: Machine
