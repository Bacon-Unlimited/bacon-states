# windows:SUPPORTED_WindowsVista
#
# This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.
# 
# If you enable or do not configure this policy setting, Windows uses standby states to put the computer in a sleep state.
# 
# If you disable this policy setting, standby states (S1-S3) are not allowed.
Allow standby states (S1-S3) when sleeping (plugged in):
  lgpo.set:
  - name: AllowStandbyStatesAC_2
  - setting: Enabled
  - policy_class: Machine
