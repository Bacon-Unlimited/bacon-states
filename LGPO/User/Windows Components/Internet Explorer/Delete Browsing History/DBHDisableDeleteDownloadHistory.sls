# SUPPORTED_IE9
#
# This policy setting prevents the user from deleting his or her download history. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, download history is preserved when the user clicks Delete.
# 
# If you disable this policy setting, download history is deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve download history when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting download history:
  lgpo.set:
  - name: DBHDisableDeleteDownloadHistory
  - setting: Enabled
  - policy_class: User
