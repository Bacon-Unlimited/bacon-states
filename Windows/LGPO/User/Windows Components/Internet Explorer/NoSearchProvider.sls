# SUPPORTED_IE7
#
# This policy setting prevents the user from changing the default search provider for the Address bar and the toolbar Search box.
# 
# If you enable this policy setting, the user cannot change the default search provider.
# 
# If you disable or do not configure this policy setting, the user can change the default search provider.
Prevent changing the default search provider:
  lgpo.set:
  - name: NoSearchProvider
  - setting: Enabled
  - policy_class: User
