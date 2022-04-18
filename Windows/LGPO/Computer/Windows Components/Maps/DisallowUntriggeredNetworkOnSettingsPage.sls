# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to turn on or turn off unsolicited network traffic on the Offline Maps page in Settings > System > Offline Maps.
# 
# If you enable this policy setting, features that generate network traffic on the Offline Maps settings page are turned off. Note: This may turn off the entire settings page.
#  
# If you disable or do not configure this policy setting, the Offline Maps setting page may generate network traffic.
Turn off unsolicited network traffic on the Offline Maps settings page:
  lgpo.set:
  - name: DisallowUntriggeredNetworkOnSettingsPage
  - setting: Enabled
  - policy_class: Machine
