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
# LOCATION: \User\System\Locale Services\PreventGeoIdChange_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents users from changing their user geographical location (GeoID).
# 
# If you enable this policy setting, users cannot change their GeoID.
# 
# If you disable or do not configure this policy setting, users may select any GeoID.
# 
# If you enable this policy setting at the computer level, it cannot be disabled by a per-user policy setting. If you disable this policy setting at the computer level, the per-user policy is ignored. If you do not configure this policy setting at the computer level, restrictions are based on per-user policy settings.
# 
# To set this policy setting on a per-user basis, make sure that the per-computer policy setting is not configured.
Disallow changing of geographic location:
  lgpo.set:
  - name: PreventGeoIdChange_1
  - setting: Enabled
  - policy_class: User
