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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\SearchCompanion_DisableFileUpdates.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether Search Companion should automatically download content updates during local and Internet searches.
# 
# When users search the local computer or the Internet, Search Companion occasionally connects to Microsoft to download an updated privacy policy and additional content files used to format and display results.
# 
# If you enable this policy setting, Search Companion does not download content updates during searches.
# 
# If you disable or do not configure this policy setting, Search Companion downloads content updates unless the user is using Classic Search.
# 
# Note: Internet searches still send the search text and information about the search to Microsoft and the chosen search provider. Choosing Classic Search turns off the Search Companion feature completely.
Turn off Search Companion content file updates:
  lgpo.set:
  - name: SearchCompanion_DisableFileUpdates
  - setting: Enabled
  - policy_class: Machine
