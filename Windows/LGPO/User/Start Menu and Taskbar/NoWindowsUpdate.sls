# windows:SUPPORTED_Windows81To2k
#
# This policy setting allows you to remove links and access to Windows Update.
# 
# If you enable this policy setting, users are prevented from connecting to the Windows Update Web site.
# 
# Enabling this policy setting blocks user access to the Windows Update Web site at http://windowsupdate.microsoft.com. Also, the policy setting removes the Windows Update hyperlink from the Start menu and from the Tools menu in Internet Explorer.
# 
# Windows Update, the online extension of Windows, offers software updates to keep a users system up-to-date. The Windows Update Product Catalog determines any system files, security fixes, and Microsoft updates that users need and shows the newest versions available for download.
# 
# If you disable or do not configure this policy setting, the Windows Update hyperlink is available from the Start menu and from the Tools menu in Internet Explorer.
# 
# Also, see the "Hide the "Add programs from Microsoft" option" policy setting.
Remove links and access to Windows Update:
  lgpo.set:
  - name: NoWindowsUpdate
  - setting: Enabled
  - policy_class: User
