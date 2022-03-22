# windows:SUPPORTED_Windows7
#
# Allows you to disable System Restore configuration through System Protection.
# 
# This policy setting allows you to turn off System Restore configuration through System Protection.
# 
# System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. The behavior of this policy setting depends on the "Turn off System Restore" policy setting.
# 
# If you enable this policy setting, the option to configure System Restore through System Protection is disabled.
# 
# If you disable or do not configure this policy setting, users can change the System Restore settings through System Protection. 
# 
# Also, see the "Turn off System Restore" policy setting. If the "Turn off System Restore" policy setting is enabled, the "Turn off System Restore configuration" policy setting is overwritten.
Turn off Configuration:
  lgpo.set:
  - name: SR_DisableConfig
  - setting: Enabled
  - policy_class: Machine
