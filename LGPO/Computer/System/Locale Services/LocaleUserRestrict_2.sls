# windows:SUPPORTED_WindowsVista
#
# This policy setting restricts users on a computer to the specified list of user locales. If the list is empty, it locks all user locales to their current values. This policy setting does not change existing user locale settings; however, the next time a user attempts to change their user locale, their choices will be restricted to locales in this list.
# 
# To set this policy setting on a per-user basis, make sure that you do not configure the per-computer policy setting.
# 
# The locale list is specified using language tags, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-CA;fr-CA" would restrict the user locale to English (Canada) and French (Canada).
# 
# If you enable this policy setting, only locales in the specified locale list can be selected by users.
# 
# If you disable or do not configure this policy setting, users can select any locale installed on the computer, unless restricted by the "Disallow selection of Custom Locales" policy setting.
# 
# If this policy setting is enabled at the computer level, it cannot be disabled by a per-user policy. If this policy setting is disabled at the computer level, the per-user policy is ignored. If this policy setting is not configured at the computer level, restrictions are based on per-user policies.
#       
Restrict user locales:
  lgpo.set:
  - name: LocaleUserRestrict_2
  - setting:
      AllowableUserLocaleTagList: text-placeholder
  - policy_class: Machine
