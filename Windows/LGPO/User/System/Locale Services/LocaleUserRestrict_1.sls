####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\System\Locale Services\LocaleUserRestrict_1.sls
#
# SUPPORTED WINDOWS OS
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
  - name: LocaleUserRestrict_1
  - setting:
      AllowableUserLocaleTagList: text-placeholder
  - policy_class: User
