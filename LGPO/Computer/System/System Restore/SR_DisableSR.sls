# windows:SUPPORTED_Windows7
#
# Allows you to disable System Restore.
# 
# This policy setting allows you to turn off System Restore.
# 
# System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.
# 
# If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.
# 
# If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.
# 
# Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.
Turn off System Restore:
  lgpo.set:
  - name: SR_DisableSR
  - setting: Enabled
  - policy_class: Machine
