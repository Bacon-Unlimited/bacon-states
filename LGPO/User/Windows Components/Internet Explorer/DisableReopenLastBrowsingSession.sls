# SUPPORTED_IE8
#
# This policy setting allows you to manage whether a user has access to the Reopen Last Browsing Session feature in Internet Explorer.
# 
# If you enable this policy setting, the user cannot use the Reopen Last Browsing Session feature.
# 
# If you disable or do not configure this policy setting, the user can use the Reopen Last Browsing Session feature.
Turn off Reopen Last Browsing Session:
  lgpo.set:
  - name: DisableReopenLastBrowsingSession
  - setting: Enabled
  - policy_class: User
