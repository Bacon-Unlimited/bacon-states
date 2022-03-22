# SUPPORTED_IE7
#
# This policy setting prevents users from deleting passwords. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, passwords are preserved when the user clicks Delete.
# 
# If you disable this policy setting, passwords are deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve passwords when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
Prevent deleting passwords:
  lgpo.set:
  - name: NoDelPasswords
  - setting: Enabled
  - policy_class: User
