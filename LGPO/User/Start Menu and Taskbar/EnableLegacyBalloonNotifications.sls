# windows:SUPPORTED_Windows_10_0
#
# This policy disables the functionality that converts balloons to toast notifications. 
# 
# If you enable this policy setting, system and application notifications will render as balloons instead of toast notifications.   
# 
# Enable this policy setting if a specific app or system component that uses balloon notifications has compatibility issues with toast notifications. 
# 
# If you disable or dont configure this policy setting, all notifications will appear as toast notifications.
# 
# A reboot is required for this policy setting to take effect.
Disable showing balloon notifications as toasts.:
  lgpo.set:
  - name: EnableLegacyBalloonNotifications
  - setting: Enabled
  - policy_class: User
