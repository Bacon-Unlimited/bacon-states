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
# LOCATION: \User\Windows Components\Internet Explorer\EnableSuggestedSites.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting controls the Suggested Sites feature, which recommends websites based on the users browsing activity. Suggested Sites reports a users browsing history to Microsoft to suggest sites that the user might want to visit.
# 
# If you enable this policy setting, the user is not prompted to enable Suggested Sites. The users browsing history is sent to Microsoft to produce suggestions.
# 
# If you disable this policy setting, the entry points and functionality associated with this feature are turned off.
# 
# If you do not configure this policy setting, the user can turn on and turn off the Suggested Sites feature.
Turn on Suggested Sites:
  lgpo.set:
  - name: EnableSuggestedSites
  - setting: Enabled
  - policy_class: User
