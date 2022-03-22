# windows:SUPPORTED_Windows7
#
# 
#         This policy setting turns off the sensor feature for this computer.
# 
#         If you enable this policy setting, the sensor feature is turned off, and all programs on this computer cannot use the sensor feature.
# 
#         If you disable or do not configure this policy setting, all programs on this computer can use the sensor feature.
#       
Turn off sensors:
  lgpo.set:
  - name: DisableSensors_2
  - setting: Enabled
  - policy_class: Machine
