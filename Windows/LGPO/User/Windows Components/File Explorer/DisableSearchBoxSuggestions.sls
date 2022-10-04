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
# LOCATION: \User\Windows Components\File Explorer\DisableSearchBoxSuggestions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
# Disables suggesting recent queries for the Search Box and prevents entries into the Search Box from being stored in the registry for future references.
# 
# File Explorer shows suggestion pop-ups as users type into the Search Box.  These suggestions are based on their past entries into the Search Box.
# 
# Note: If you enable this policy, File Explorer will not show suggestion pop-ups as users type into the Search Box, and it will not store Search Box entries into the registry for future references.  If the user types a property, values that match this property will be shown but no data will be saved in the registry or re-shown on subsequent uses of the search box.
#       
Turn off display of recent search entries in the File Explorer search box:
  lgpo.set:
  - name: DisableSearchBoxSuggestions
  - setting: Enabled
  - policy_class: User
