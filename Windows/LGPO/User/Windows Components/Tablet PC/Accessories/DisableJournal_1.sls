# windows:SUPPORTED_WindowsVista
#
# Prevents start of Windows Journal.
# 
# If you enable this policy, the Windows Journal accessory will not run.
# 
# If you disable this policy, the Windows Journal accessory will run.
# 
# If you do not configure this policy, the Windows Journal accessory will run.
Do not allow Windows Journal to be run:
  lgpo.set:
  - name: DisableJournal_1
  - setting: Enabled
  - policy_class: User
