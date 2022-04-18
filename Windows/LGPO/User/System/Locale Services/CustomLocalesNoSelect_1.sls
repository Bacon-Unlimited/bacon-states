# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents a user from selecting a supplemental custom locale as their user locale. The user is restricted to the set of locales that are installed with the operating system.
# 
# This does not affect the selection of replacement locales. To prevent the selection of replacement locales, adjust the permissions of the %windir%\Globalization directory to prevent the installation of locales by unauthorized users.
# 
# The policy setting "Restrict user locales" can also be enabled to disallow selection of a custom locale, even if this policy setting is not configured.
# 
# If you enable this policy setting, the user cannot select a custom locale as their user locale, but they can still select a replacement locale if one is installed.
# 
# If you disable or do not configure this policy setting, the user can select a custom locale as their user locale.
# 
# If this policy setting is enabled at the machine level, it cannot be disabled by a per-user policy setting. If this policy setting is disabled at the machine level, the per-user policy setting will be ignored. If this policy setting is not configured at the machine level, restrictions will be based on per-user policy settings.
# 
# To set this policy setting on a per-user basis, make sure that you do not configure the per-machine policy setting.
# 
#       
Disallow selection of Custom Locales:
  lgpo.set:
  - name: CustomLocalesNoSelect_1
  - setting: Enabled
  - policy_class: User
