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
# LOCATION: \User\System\Locale Services\PreventUserOverrides_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents the user from customizing their locale by changing their user overrides.
# 
# Any existing overrides in place when this policy is enabled will be frozen. To remove existing user overrides, first reset the user(s) values to the defaults and then apply this policy.
# 
# When this policy setting is enabled, users can still choose alternate locales installed on the system unless prevented by other policies, however, they will be unable to customize those choices.  The user cannot customize their user locale with user overrides.
# 
# If this policy setting is disabled or not configured, then the user can customize their user locale overrides.
# 
# If this policy is set to Enabled at the computer level, then it cannot be disabled by a per-User policy. If this policy is set to Disabled at the computer level, then the per-User policy will be ignored. If this policy is set to Not Configured at the computer level, then restrictions will be based on per-User policies.
# 
# To set this policy on a per-user basis, make sure that the per-computer policy is set to Not Configured.
Disallow user override of locale settings:
  lgpo.set:
  - name: PreventUserOverrides_1
  - setting: Enabled
  - policy_class: User
