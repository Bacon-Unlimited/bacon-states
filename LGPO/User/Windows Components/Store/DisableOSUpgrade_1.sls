# windows:SUPPORTED_Windows8
#
# Enables or disables the Store offer to update to the latest version of Windows.
# 
# If you enable this setting, the Store application will not offer updates to the latest version of Windows.
# 
# If you disable or do not configure this setting the Store application will offer updates to the latest version of Windows.
Turn off the offer to update to the latest version of Windows:
  lgpo.set:
  - name: DisableOSUpgrade_1
  - setting: Enabled
  - policy_class: User
