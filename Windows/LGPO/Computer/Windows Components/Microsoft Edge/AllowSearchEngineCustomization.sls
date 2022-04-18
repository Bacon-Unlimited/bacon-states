# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you decide whether users can change their search engine. If you disable this setting, users can't add new search engines or change the default used in the address bar.
# 
# Important
# This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).
# 
# If you enable or don't configure this policy, users can add new search engines and change the default used in the address bar from within Microsoft Edge Settings.
# 
# If you disable this setting, users can't add search engines or change the default used in the address bar.
Allow search engine customization:
  lgpo.set:
  - name: AllowSearchEngineCustomization
  - setting: Enabled
  - policy_class: Machine
