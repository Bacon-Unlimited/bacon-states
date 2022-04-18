# WU_SUPPORTED_Win2kSP3_Or_XPSP1_Through_Win81_or_Server2012R2
#
# This setting allows you to remove access to Windows Update.
# 
# If you enable this setting, all Windows Update features are removed. This includes blocking access to the Windows Update Web site at http://windowsupdate.microsoft.com, from the Windows Update hyperlink on the Start menu, and also on the Tools menu in Internet Explorer. Windows automatic updating is also disabled; you will neither be notified about nor will you receive critical updates from Windows Update. This setting also prevents Device Manager from automatically installing driver updates from the Windows Update Web site.
# 
# If enabled you can configure one of the following notification options:
# 
# 0 = Do not show any notifications
# 
# This setting will remove all access to Windows Update features and no notifications will be shown.
# 
# 1 = Show restart required notifications
# 
# This setting will show notifications about restarts that are required to complete an installation.
# 
# On Windows 8 and Windows RT, if this policy is Enabled, then only notifications related to restarts and the inability to detect updates will be shown. The notification options are not supported. Notifications on the login screen will always show up.
Remove access to use all Windows Update features:
  lgpo.set:
  - name: RemoveWindowsUpdate
  - setting:
      RemoveWindowsUpdateMode: enum-placeholder
  - policy_class: User
