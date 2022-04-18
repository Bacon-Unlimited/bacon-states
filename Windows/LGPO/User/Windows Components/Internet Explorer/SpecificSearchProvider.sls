# SUPPORTED_IE7
#
# This policy setting allows you to restrict the search providers that appear in the Search box in Internet Explorer to those defined in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Normally, search providers can be added from third-party toolbars or in Setup, but the user can also add them from a search provider's website.
# 
# If you enable this policy setting, the user cannot configure the list of search providers on his or her computer, and any default providers installed do not appear (including providers installed from other applications). The only providers that appear are those in the list of policy keys for search providers. Note: This list can be created through a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.
# 
# If you disable or do not configure this policy setting, the user can configure his or her list of search providers.
Restrict search providers to a specific list:
  lgpo.set:
  - name: SpecificSearchProvider
  - setting: Enabled
  - policy_class: User
