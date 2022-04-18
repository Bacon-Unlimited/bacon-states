# SUPPORTED_IE5_7
#
# This policy setting is used to manage temporary Internet files and cookies associated with your Internet browsing history, available by clicking Tools, Internet Options, and then Delete Browsing History in Internet Explorer.
# 
# If you enable this policy setting, users will not be able to delete temporary Internet files and cookies.
# 
# If you disable or do not configure this policy setting, users will be able to delete temporary Internet files and cookies.
Prevent the deletion of temporary Internet files and cookies:
  lgpo.set:
  - name: RestrictSettings
  - setting: Enabled
  - policy_class: User
