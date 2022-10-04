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
# LOCATION: \Computer\System\Power Management\Video and Display Settings\VideoPowerDownTimeOutAC_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the period of inactivity before Windows turns off the display.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.
# 
# If you disable or do not configure this policy setting, users control this setting.
# 
# If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
Turn off the display (plugged in):
  lgpo.set:
  - name: VideoPowerDownTimeOutAC_2
  - setting:
      EnterVideoACPowerDownTimeOut: decimal-placeholder
  - policy_class: Machine
