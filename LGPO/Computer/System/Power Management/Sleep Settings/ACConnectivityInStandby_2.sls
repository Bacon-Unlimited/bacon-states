# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to control the network connectivity state in standby on modern standby-capable systems.
# 
# If you enable this policy setting, network connectivity will be maintained in standby.
# 
# If you disable this policy setting, network connectivity in standby is not guaranteed. This connectivity restriction currently applies to WLAN networks only, and is subject to change.
# 
# If you do not configure this policy setting, users control this setting.
Allow network connectivity during connected-standby (plugged in):
  lgpo.set:
  - name: ACConnectivityInStandby_2
  - setting: Enabled
  - policy_class: Machine
