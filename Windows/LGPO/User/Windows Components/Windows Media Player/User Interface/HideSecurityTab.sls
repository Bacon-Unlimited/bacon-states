# SUPPORTED_WMP9
#
# This policy setting allows you to hide the Security tab in Windows Media Player.
# 
# If you enable this policy setting, the default security settings for the options on the Security tab are used unless the user changed the settings previously. Users can still change security and zone settings by using Internet Explorer unless these settings have been hidden or disabled by Internet Explorer policies.
# 
# If you disable or do not configure this policy setting, users can configure the security settings on the Security tab.
Hide Security Tab:
  lgpo.set:
  - name: HideSecurityTab
  - setting: Enabled
  - policy_class: User
