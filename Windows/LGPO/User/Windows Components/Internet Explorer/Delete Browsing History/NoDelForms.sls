# SUPPORTED_IE7
#
# This policy setting prevents the user from deleting form data. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, form data is preserved when the user clicks Delete.
# 
# If you disable this policy setting, form data is deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve form data when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting form data:
  lgpo.set:
  - name: NoDelForms
  - setting: Enabled
  - policy_class: User
