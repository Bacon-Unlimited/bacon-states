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
# LOCATION: \Computer\Windows Components\HomeGroup\DisableHomeGroup.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies whether users can add computers to a homegroup. By default, users can add their computer to a homegroup on a private network.
# 
# If you enable this policy setting, users cannot add computers to a homegroup. This policy setting does not affect other network sharing features.
# 
# If you disable or do not configure this policy setting, users can add computers to a homegroup. However, data on a domain-joined computer is not shared with the homegroup.
# 
# This policy setting is not configured by default.
# 
# You must restart the computer for this policy setting to take effect.
Prevent the computer from joining a homegroup:
  lgpo.set:
  - name: DisableHomeGroup
  - setting: Enabled
  - policy_class: Machine
