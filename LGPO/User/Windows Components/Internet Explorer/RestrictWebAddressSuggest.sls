# SUPPORTED_IE5
#
# This AutoComplete feature suggests possible matches when users are entering Web addresses in the browser address bar.
# 
# If you enable this policy setting, user will not be suggested matches when entering Web addresses. The user cannot change the auto-complete for web-address setting.
# 
# If you disable this policy setting, user will be suggested matches when entering Web addresses. The user cannot change the auto-complete for web-address setting.
# 
# If you do not configure this policy setting, a user will have the freedom to choose to turn the auto-complete setting for web-addresses on or off.
Turn off the auto-complete feature for web addresses:
  lgpo.set:
  - name: RestrictWebAddressSuggest
  - setting: Enabled
  - policy_class: User
