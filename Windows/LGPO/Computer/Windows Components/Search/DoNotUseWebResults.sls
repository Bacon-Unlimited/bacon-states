# WinBlueOnly
#
# This policy setting allows you to control whether or not Search can perform queries on the web, and if the web results are displayed in Search.
# 
# If you enable this policy setting, queries won't be performed on the web and web results won't be displayed when a user performs a query in Search.
# 
# If you disable this policy setting, queries will be performed on the web and web results will be displayed when a user performs a query in Search.
# 
# If you don't configure this policy setting, a user can choose whether or not Search can perform queries on the web, and if the web results are displayed in Search.
Don't search the web or display web results in Search:
  lgpo.set:
  - name: DoNotUseWebResults
  - setting: Enabled
  - policy_class: Machine
