# windows:SUPPORTED_Windows7ToXP
#
# This policy setting allows you to remove the Network icon from Start Menu.
# 
# If you enable this policy setting, the Network icon is no longer available from Start Menu.
# 
# If you disable or do not configure this policy setting, the Network icon is available from Start Menu.
Remove Network icon from Start Menu:
  lgpo.set:
  - name: NoSMMyNetworkPlaces
  - setting: Enabled
  - policy_class: User
