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
# LOCATION: \Computer\Network\WWAN Service\WWAN UI Settings\ShowAppCellularAccessUI.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting configures the visibility of the link to the per-application cellular access control page in the cellular setting UX.
# 
# If this policy setting is enabled, a drop-down list box presenting possible values will be active.  Select "Hide" or "Show" to hide or show the link to the per-application cellular access control page.
# If this policy setting is disabled or is not configured, the link to the per-application cellular access control page is showed by default.
#       
Set Per-App Cellular Access UI Visibility:
  lgpo.set:
  - name: ShowAppCellularAccessUI
  - setting:
      ShowAppCellularAccessUI_Option: enum-placeholder
  - policy_class: Machine
