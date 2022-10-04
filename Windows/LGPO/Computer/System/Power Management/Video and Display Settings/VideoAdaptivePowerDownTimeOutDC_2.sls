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
# LOCATION: \Computer\System\Power Management\Video and Display Settings\VideoAdaptivePowerDownTimeOutDC_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage how long a computer must be inactive before Windows turns off the computers display.
# 
# If you enable this policy setting, Windows automatically adjusts the setting based on what users do with their keyboard or mouse to keep the display on.
# 
# If you disable this policy setting, Windows uses the same setting regardless of users keyboard or mouse behavior.
# 
# If you do not configure this policy setting, users control this setting.
Turn off adaptive display timeout (on battery):
  lgpo.set:
  - name: VideoAdaptivePowerDownTimeOutDC_2
  - setting: Enabled
  - policy_class: Machine
