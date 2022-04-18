# SUPPORTED_IE8ONLY
#
# This policy setting prevents the user from deleting InPrivate Filtering data. Internet Explorer collects InPrivate Filtering data during browser sessions other than InPrivate Browsing sessions to determine which third-party items should be blocked when InPrivate Filtering is enabled. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, InPrivate Filtering data is preserved when the user clicks Delete.
# 
# If you disable this policy setting, InPrivate Filtering data is deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve InPrivate Filtering data when he or she clicks Delete.
Prevent deleting InPrivate Filtering data:
  lgpo.set:
  - name: DBHDisableDeleteInPrivateDataV8
  - setting: Enabled
  - policy_class: Machine
