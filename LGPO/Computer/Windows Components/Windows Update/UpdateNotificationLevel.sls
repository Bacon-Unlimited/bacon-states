# windows:SUPPORTED_Windows_10_0_NOARM
#
# 0 (default)  Use the default Windows Update notifications
# 1  Turn off all notifications, excluding restart warnings
# 2  Turn off all notifications, including restart warnings
# 
# This policy allows you to define what Windows Update notifications users see. This policy doesnt control how and when updates are downloaded and installed.
# 
# Important: if you choose not to get update notifications and also define other Group policy so that devices arent automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.
#       
Display options for update notifications:
  lgpo.set:
  - name: UpdateNotificationLevel
  - setting:
      UpdateNotificationLevel: enum-placeholder
  - policy_class: Machine
