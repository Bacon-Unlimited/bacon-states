# windows:SUPPORTED_Windows_10_0_RS6
#
# This policy setting disables the acrylic blur effect on logon background image.
# 
#         If you enable this policy, the logon background image shows without blur.
#         If you disable or do not configure this policy, the logon background image adopts the acrylic blur effect.
#       
Show clear logon background:
  lgpo.set:
  - name: DisableAcrylicBackgroundOnLogon
  - setting: Enabled
  - policy_class: Machine
