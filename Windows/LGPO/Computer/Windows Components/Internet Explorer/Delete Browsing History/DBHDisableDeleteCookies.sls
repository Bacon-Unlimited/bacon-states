# SUPPORTED_IE8
#
# This policy setting prevents the user from deleting cookies. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, cookies are preserved when the user clicks Delete.
# 
# If you disable this policy setting, cookies are deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve cookies when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting cookies:
  lgpo.set:
  - name: DBHDisableDeleteCookies
  - setting: Enabled
  - policy_class: Machine
