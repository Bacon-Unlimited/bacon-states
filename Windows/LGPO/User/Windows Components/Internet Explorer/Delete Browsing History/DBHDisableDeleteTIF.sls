# SUPPORTED_IE8
#
# This policy setting prevents the user from deleting temporary Internet files. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, temporary Internet files are preserved when the user clicks Delete.
# 
# If you disable this policy setting, temporary Internet files are deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve temporary Internet files when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting temporary Internet files:
  lgpo.set:
  - name: DBHDisableDeleteTIF
  - setting: Enabled
  - policy_class: User
