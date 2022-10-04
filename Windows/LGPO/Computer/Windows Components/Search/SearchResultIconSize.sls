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
# LOCATION: \Computer\Windows Components\Search\SearchResultIconSize.sls
#
# SUPPORTED WINDOWS OS
# RedistOnly
#
# Enabling this policy allows you to specify whether you want large icon or small icon view for your Desktop Search results. The two options are:
# 
# - Large Icon
# - Small Icon.
# 
# If you have disabled the preview pane because your organization does not support Office XP or above, you should enforce the large icon view so that users can see snippets related to their desktop search query.
# 
# When this policy is disabled or not configured, the default is small icon view.
Set large or small icon view in desktop search results:
  lgpo.set:
  - name: SearchResultIconSize
  - setting:
      SearchResultIconSize: enum-placeholder
  - policy_class: Machine
