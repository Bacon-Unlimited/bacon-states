# SUPPORTED_IE9_IE11NONWIN10
#
# This policy setting allows you to specify whether a user can browse to the website of a top result when search is enabled on the Address bar. The possible options are:
#      Disable top result search: When a user performs a search in the Address bar, a list of search results from the selected search provider is displayed in the main window.
#      Enable top result search: When a user performs a search in the Address bar, the user is directed to an external top result website determined by the search provider, if available.
# 
# If you enable this policy setting, you can choose where to direct the user after a search on the Address bar: a top-result website or a search-results webpage in the main window.
# 
# If you disable or do not configure this policy setting, the user can select their preference for this behavior. Browsing to the top-result website is the default.
Prevent configuration of top-result search on Address bar:
  lgpo.set:
  - name: TopResultPol
  - setting:
      TopResult: enum-placeholder
  - policy_class: User
