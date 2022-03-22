# windows:SUPPORTED_Windows_6_3
#
# Disables help tips that Windows shows to the user.
# 
# By default, Windows will show the user help tips until the user has successfully completed the scenarios.
# 
# If this setting is enabled, Windows will not show any help tips to the user.
#       
Disable help tips:
  lgpo.set:
  - name: DisableHelpSticker
  - setting: Enabled
  - policy_class: User
