# windows:SUPPORTED_Windows7
#
# This policy setting allows you to turn off automatic promotion of notification icons to the taskbar.
# 
# If you enable this policy setting, newly added notification icons are not temporarily promoted to the Taskbar. Users can still configure icons to be shown or hidden in the Notification Control Panel.
# 
# If you disable or do not configure this policy setting, newly added notification icons are temporarily promoted to the Taskbar.
Turn off automatic promotion of notification icons to the taskbar:
  lgpo.set:
  - name: NoSystraySystemPromotion
  - setting: Enabled
  - policy_class: User
