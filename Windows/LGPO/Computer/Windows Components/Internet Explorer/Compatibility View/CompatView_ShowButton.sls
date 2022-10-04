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
# LOCATION: \Computer\Windows Components\Internet Explorer\Compatibility View\CompatView_ShowButton.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8_10
#
# This policy setting controls the Compatibility View button that appears on the Command bar. This button allows the user to fix website display problems that he or she may encounter while browsing.
# 
# If you enable this policy setting, the user cannot use the Compatibility View button.
# 
# If you disable or do not configure this policy setting, the user can use the Compatibility View button.
Turn off Compatibility View button:
  lgpo.set:
  - name: CompatView_ShowButton
  - setting: Enabled
  - policy_class: Machine
