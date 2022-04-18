# windows:SUPPORTED_Windows7
#
# This policy setting configures whether or not non-Enhanced Storage removable devices are allowed on your computer.
# 
# If you enable this policy setting, non-Enhanced Storage removable devices are not allowed on your computer.
# 
# If you disable or do not configure this policy setting, non-Enhanced Storage removable devices are allowed on your computer.
Do not allow non-Enhanced Storage removable devices:
  lgpo.set:
  - name: DisallowLegacyDiskDevices
  - setting: Enabled
  - policy_class: Machine
