# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether or not platform validation data is refreshed when Windows is started following BitLocker recovery.
# 
# If you enable this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery.
# 
# If you disable this policy setting, platform validation data will not be refreshed when Windows is started following BitLocker recovery.
# 
# If you do not configure this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery.
# 
#       
Reset platform validation data after BitLocker recovery:
  lgpo.set:
  - name: TPMAutoReseal_Name
  - setting: Enabled
  - policy_class: Machine
