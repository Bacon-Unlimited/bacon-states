# windows:SUPPORTED_Windows8
#
# 
#           This policy setting blocks applications from using the network to send notifications to update tiles, tile badges, toast, or raw notifications. This policy setting turns off the connection between Windows and the Windows Push Notification Service (WNS). This policy setting also stops applications from being able to poll application services to update tiles.
# 
#           If you enable this policy setting, applications and system features will not be able receive notifications from the network from WNS or via notification polling APIs.
# 
#           If you enable this policy setting, notifications can still be raised by applications running on the machine via local API calls from within the application.
# 
#           If you disable or do not configure this policy setting, the client computer will connect to WNS at user login and applications will be allowed to poll for tile notification updates in the background.
# 
#           No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off notifications network usage:
  lgpo.set:
  - name: NoCloudNotification
  - setting: Enabled
  - policy_class: Machine
