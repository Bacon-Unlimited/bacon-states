# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn off hybrid sleep.
# 
# If you enable this policy setting, a hiberfile is not generated when the system transitions to sleep (Stand By).
# 
# If you disable or do not configure this policy setting, users control this setting.
Turn off hybrid sleep (plugged in):
  lgpo.set:
  - name: ACStandbyWithHiberfileEnable_2
  - setting: Enabled
  - policy_class: Machine
