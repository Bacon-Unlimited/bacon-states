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
# LOCATION: \Computer\Windows Components\Tablet PC\Touch Input\TouchInputOff_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# Turn off Tablet PC touch input
# 
# Turns off touch input, which allows the user to interact with their computer using their finger.
# 
# If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.
# 
# If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.
# 
# If you do not configure this setting, touch input is on by default.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off Tablet PC touch input:
  lgpo.set:
  - name: TouchInputOff_2
  - setting: Enabled
  - policy_class: Machine
