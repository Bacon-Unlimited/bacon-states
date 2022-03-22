# windows:SUPPORTED_Windows_10_0_NOARM
#
# This setting allows you to remove access to scan Windows Update.
# 
# If you enable this setting user access to Windows Update scan, download and install is removed.
#       
Remove access to use all Windows Update features:
  lgpo.set:
  - name: DisableUXWUAccess
  - setting: Enabled
  - policy_class: Machine
