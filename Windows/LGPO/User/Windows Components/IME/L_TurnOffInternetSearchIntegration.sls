# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off Internet search integration.
# 
# Search integration includes both using Search Provider (Japanese Microsoft IME) and performing bing search from predictive input for Japanese Microsoft IME.
# 
# If you enable this policy setting, you cannot use search integration.
# 
# If you disable or do not configure this policy setting, the search integration function can be used by default.
# 
# This policy setting applies to Japanese Microsoft IME.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off Internet search integration:
  lgpo.set:
  - name: L_TurnOffInternetSearchIntegration
  - setting: Enabled
  - policy_class: User
