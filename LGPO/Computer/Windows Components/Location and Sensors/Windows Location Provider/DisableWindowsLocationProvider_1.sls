# windows:SUPPORTED_Windows8_Or_Windows_6_3_Only
#
# 
#         This policy setting turns off the Windows Location Provider feature for this computer.
# 
#         If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer will not be able to use the Windows Location Provider feature.
# 
#         If you disable or do not configure this policy setting, all programs on this computer can use the Windows Location Provider feature.
Turn off Windows Location Provider:
  lgpo.set:
  - name: DisableWindowsLocationProvider_1
  - setting: Enabled
  - policy_class: Machine
