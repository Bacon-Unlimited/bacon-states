# SUPPORTED_INTERNET_BROWSER_WIN10
#
# You can configure Microsoft Edge to suppress the display of the notification that informs users that support of this version of Microsoft Edge ended on March 9th, 2021. If enabled, the notification will not show.
# 
# If disabled or not configured, the notification will show every time Edge is launched. 
Suppress the display of Edge Deprecation Notification:
  lgpo.set:
  - name: SuppressEdgeDeprecationNotification
  - setting: Enabled
  - policy_class: User
