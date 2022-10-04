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
# LOCATION: \User\Windows Components\Internet Explorer\NoTabBrowsingPopups.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to define the user experience related to how pop-up windows appear in tabbed browsing in Internet Explorer.
# 
# If you enable this policy setting, the user cannot configure pop-up windows in tabbed browsing. You must specify one of the following values:
#     0: Let Internet Explorer decide.
#     1: Force pop-up windows to open in new windows.
#     2: Force pop-up windows to open on new tabs.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the user's setting for pop-up windows in tabbed browsing.
Turn off configuration of pop-up windows in tabbed browsing:
  lgpo.set:
  - name: NoTabBrowsingPopups
  - setting:
      PopUpList: enum-placeholder
  - policy_class: User
