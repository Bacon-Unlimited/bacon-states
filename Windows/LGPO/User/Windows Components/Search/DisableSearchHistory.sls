# Win8Only
#
# This policy setting prevents search queries from being stored in the registry. If you enable this policy setting, search suggestions based on previous searches won't appear in the search pane. Search suggestions provided by apps or by Windows based on local content will still appear.
# 
# If you disable or do not configure this policy setting, users will get search suggestions based on previous searches in the search pane.
Turn off storage and display of search history:
  lgpo.set:
  - name: DisableSearchHistory
  - setting: Enabled
  - policy_class: User
