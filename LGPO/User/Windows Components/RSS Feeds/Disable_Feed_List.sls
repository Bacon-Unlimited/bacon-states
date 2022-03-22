# SUPPORTED_IE7
#
# This policy setting prevents the user from using Internet Explorer as a feed reader. This policy setting has no impact on the Windows RSS Platform.
# 
# If you enable this policy setting, the user cannot access the feed list in the Favorites Center.
# 
# If you disable or do not configure this policy setting, the user can access the feed list in the Favorites Center.
Prevent access to feed list:
  lgpo.set:
  - name: Disable_Feed_List
  - setting: Enabled
  - policy_class: User
