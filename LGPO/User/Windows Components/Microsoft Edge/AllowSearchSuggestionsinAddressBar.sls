# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether search suggestions appear in the Address bar of Microsoft Edge. By default, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.
# 
# If you enable this setting, employees can see search suggestions in the Address bar of Microsoft Edge.
# 
# If you disable this setting, employees can't see search suggestions in the Address bar of Microsoft Edge.
# 
# If you don't configure this setting, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.
Configure search suggestions in Address bar:
  lgpo.set:
  - name: AllowSearchSuggestionsinAddressBar
  - setting: Enabled
  - policy_class: User
