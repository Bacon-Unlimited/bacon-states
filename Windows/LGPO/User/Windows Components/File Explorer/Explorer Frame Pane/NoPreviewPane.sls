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
# LOCATION: \User\Windows Components\File Explorer\Explorer Frame Pane\NoPreviewPane.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting shows or hides the Details Pane in File Explorer.
# 
# If you enable this policy setting and configure it to hide the pane, the Details Pane in File Explorer is hidden and cannot be turned on by the user.
# 
# If you enable this policy setting and configure it to show the pane, the Details Pane is always visible and cannot be hidden by the user. Note: This has a side effect of not being able to toggle to the Preview Pane since the two cannot be displayed at the same time.
# 
# If you disable, or do not configure this policy setting, the Details Pane is hidden by default and can be displayed by the user. This is the default policy setting.
# 
Turn on or off details pane:
  lgpo.set:
  - name: NoPreviewPane
  - setting:
      PreviewPane_Dropdownlist_Box: enum-placeholder
  - policy_class: User
