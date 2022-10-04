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
# LOCATION: \Computer\System\Power Management\Video and Display Settings\DisplayDimTimeOutDC.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the period of inactivity before Windows automatically reduces brightness of the display.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically reduces the brightness of the display.
# 
# Windows will only reduce the brightness of the primary display integrated into the computer.
# 
# If you disable or do not configure this policy setting, users control this setting.
Reduce display brightness (on battery):
  lgpo.set:
  - name: DisplayDimTimeOutDC
  - setting:
      EnterDisplayDimTimeOut: decimal-placeholder
  - policy_class: Machine
