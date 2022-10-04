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
# LOCATION: \Computer\Windows Components\Search\PreventUsingAdvancedIndexingOptions.sls
#
# SUPPORTED WINDOWS OS
# VistaOrRedist
#
# This policy setting hides or displays the Advanced Options dialog for Search and Indexing Options in the Control Panel.
# 
# If you enable this policy setting, the Advanced Options dialog for Search and Indexing Options in the Control Panel cannot be opened.
# 
# If you disable or do not configure this policy setting, users can acess the Advanced Options dialog for Search and Indexing Options in the Control Panel. This is the default for this policy setting.
Prevent the display of advanced indexing options for Windows Search in the Control Panel:
  lgpo.set:
  - name: PreventUsingAdvancedIndexingOptions
  - setting: Enabled
  - policy_class: Machine