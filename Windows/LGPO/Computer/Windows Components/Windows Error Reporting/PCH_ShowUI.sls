# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting controls whether users are shown an error dialog box that lets them report an error.
# 
# If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.
# 
# If you disable this policy setting, users are not notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that do not have interactive users.
# 
# If you do not configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.
# 
# See also the Configure Error Reporting policy setting.
Display Error Notification:
  lgpo.set:
  - name: PCH_ShowUI
  - setting: Enabled
  - policy_class: Machine
