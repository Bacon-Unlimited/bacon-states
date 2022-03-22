# SUPPORTED_IE8
#
# This policy setting prevents the user from deleting favorites site data. This feature is available in the Delete Browsing History dialog box.
# 
# If you enable this policy setting, favorites site data is preserved when the user clicks Delete.
# 
# If you disable this policy setting, favorites site data is deleted when the user clicks Delete.
# 
# If you do not configure this policy setting, the user can choose whether to delete or preserve favorites site data when he or she clicks Delete.
# 
# If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting has no effect.
Prevent deleting favorites site data:
  lgpo.set:
  - name: DBHDisableKeepFavorites
  - setting: Enabled
  - policy_class: User
