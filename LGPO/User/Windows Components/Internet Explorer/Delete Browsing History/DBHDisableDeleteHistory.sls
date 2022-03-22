# SUPPORTED_IE8
#
# This policy setting prevents the user from deleting the history of websites that he or she has visited. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, websites that the user has visited are preserved when he or she clicks Delete.
# 
# If you disable this policy setting, websites that the user has visited are deleted when he or she clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve visited websites when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting websites that the user has visited:
  lgpo.set:
  - name: DBHDisableDeleteHistory
  - setting: Enabled
  - policy_class: User
