# SUPPORTED_IE11
#
# This policy setting allows admins to enable "Save Target As" context menu in Internet Explorer mode.
# 
# If you enable this policy, "Save Target As" will show up in the Internet Explorer mode context menu and work the same as Internet Explorer.
# 
# If you disable or do not configure this policy setting, "Save Target As" will not show up in the Internet Explorer mode context menu.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Allow "Save Target As" in Internet Explorer mode:
  lgpo.set:
  - name: AllowSaveTargetAsInIEMode
  - setting: Enabled
  - policy_class: User
