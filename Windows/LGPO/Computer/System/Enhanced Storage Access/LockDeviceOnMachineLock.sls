# windows:SUPPORTED_Windows7
#
# This policy setting locks Enhanced Storage devices when the computer is locked.
# 
# This policy setting is supported in Windows Server SKUs only.
# 
# If you enable this policy setting, the Enhanced Storage device remains locked when the computer is locked.
# 
# If you disable or do not configure this policy setting, the Enhanced Storage device state is not changed when the computer is locked.
Lock Enhanced Storage when the computer is locked:
  lgpo.set:
  - name: LockDeviceOnMachineLock
  - setting: Enabled
  - policy_class: Machine
