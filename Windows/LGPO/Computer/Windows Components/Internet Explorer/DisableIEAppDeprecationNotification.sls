# SUPPORTED_IE11
#
# This policy setting allows you to manage whether the notification bar reminder that Internet Explorer is being retired is displayed. By default, the Notification bar is displayed in Internet Explorer 11.
# 
# If you enable this policy setting, the Notification bar will not be displayed in Internet Explorer 11.
# 
# If you disable, or do not configure, this policy setting, the Notification bar will be displayed in Internet Explorer 11.
Hide Internet Explorer 11 retirement notification:
  lgpo.set:
  - name: DisableIEAppDeprecationNotification
  - setting: Enabled
  - policy_class: Machine
