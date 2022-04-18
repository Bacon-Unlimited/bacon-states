# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the behavior of the Configure Default Consent setting in relation to custom consent settings.
# 
# If you enable this policy setting, the default consent levels of Windows Error Reporting always override any other consent policy setting.
# 
# If you disable or do not configure this policy setting, custom consent policy settings for error reporting determine the consent level for specified event types, and the default consent setting determines only the consent level of any other error reports.
Ignore custom consent settings:
  lgpo.set:
  - name: WerConsentOverride_1
  - setting: Enabled
  - policy_class: User
