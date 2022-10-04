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
# LOCATION: \User\Windows Components\Desktop Window Manager\Window Frame Coloring\DwmDisallowColorizationColorChanges_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the ability to change the color of window frames. 
# 
# If you enable this policy setting, you prevent users from changing the default window frame color. 
# 
# If you disable or do not configure this policy setting, you allow users to change the default window frame color. 
# 
# Note: This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that cannot be changed by users.
Do not allow color changes:
  lgpo.set:
  - name: DwmDisallowColorizationColorChanges_1
  - setting: Enabled
  - policy_class: User
