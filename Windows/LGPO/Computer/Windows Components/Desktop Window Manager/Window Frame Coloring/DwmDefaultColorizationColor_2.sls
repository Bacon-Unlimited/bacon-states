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
# LOCATION: \Computer\Windows Components\Desktop Window Manager\Window Frame Coloring\DwmDefaultColorizationColor_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the default color for window frames when the user does not specify a color. 
# 
# If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user does not specify a color. 
# 
# If you disable or do not configure this policy setting, the default internal color is used, if the user does not specify a color. 
# 
# Note: This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that cannot be changed by users.
Specify a default color:
  lgpo.set:
  - name: DwmDefaultColorizationColor_2
  - setting:
      DwmDefaultColorizationColorAlpha: decimal-placeholder
      DwmDefaultColorizationColorBlue: decimal-placeholder
      DwmDefaultColorizationColorGreen: decimal-placeholder
      DwmDefaultColorizationColorRed: decimal-placeholder
  - policy_class: Machine
