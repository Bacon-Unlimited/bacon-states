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
# LOCATION: \Computer\Windows Components\Search\SearchPrivacy.sls
#
# SUPPORTED WINDOWS OS
# WinBlueExclusive
#
# This policy setting allows you to control what information is shared with Bing in Search.
# 
# If you enable this policy setting, you can specify one of four settings, which users won't be able to change:
# 
#     -User info and location: Share a user's search history, some Microsoft account info, and specific location to personalize their search and other Microsoft experiences.
#     
#     -User info only: Share a user's search history and some Microsoft account info to personalize their search and other Microsoft experiences.
#     
#     -Anonymous info: Share usage information but don't share search history, Microsoft account info or specific location.    
# 
# If you disable or don't configure this policy setting, users can choose what information is shared in Search.
Set what information is shared in Search:
  lgpo.set:
  - name: SearchPrivacy
  - setting:
      SharePrivacy_Dropdown: enum-placeholder
  - policy_class: Machine
