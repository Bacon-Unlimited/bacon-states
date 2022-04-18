# SUPPORTED_IE10
#
# This policy setting turns off URL Suggestions. URL Suggestions allow users to autocomplete URLs in the address bar based on common URLs. The list of common URLs is stored locally and is updated once a month. No user data is sent over the internet by this feature.
# 
# If you enable this policy setting, URL Suggestions will be turned off. Users will not be able to turn on URL Suggestions.
# 
# If you disable this policy setting, URL Suggestions will be turned on. Users will not be able to turn off URL Suggestions.
# 
# If you do not configure this policy setting, URL Suggestions will be turned on. Users will be able to turn on or turn off URL Suggestions in the Internet Options dialog. By default, URL Suggestions are turned on.
Turn off URL Suggestions:
  lgpo.set:
  - name: RestrictDomainSuggestion
  - setting: Enabled
  - policy_class: User
