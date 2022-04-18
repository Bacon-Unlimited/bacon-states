# SUPPORTED_IE7
#
# This policy setting specifies whether the user can conduct a search on the Address bar.
# 
# If you enable this policy setting, you must specify which of the following actions applies to searches on the Address bar. The user cannot change the specified action.
# 
#      Do not search from the Address bar: The user cannot use the Address bar for searches. The user can still perform searches on the Search bar by clicking the Search button.
#      Display the results in the main window: When the user searches on the Address bar, the list of search results is displayed in the main window.
# 
# If you disable or do not configure this policy setting, the user can specify what action applies to searches on the Address bar.
Prevent configuration of search on Address bar:
  lgpo.set:
  - name: URLFailsPol
  - setting:
      URLFails: enum-placeholder
  - policy_class: User
