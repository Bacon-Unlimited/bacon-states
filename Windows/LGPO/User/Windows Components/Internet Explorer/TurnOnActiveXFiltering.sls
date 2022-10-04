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
# LOCATION: \User\Windows Components\Internet Explorer\TurnOnActiveXFiltering.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites so that ActiveX controls can run properly.
# 
# If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user cannot turn off ActiveX Filtering, although they may add per-site exceptions.
# 
# If you disable or do not configure this policy setting, ActiveX Filtering is not enabled by default for the user. The user can turn ActiveX Filtering on or off.
Turn on ActiveX Filtering:
  lgpo.set:
  - name: TurnOnActiveXFiltering
  - setting: Enabled
  - policy_class: User
