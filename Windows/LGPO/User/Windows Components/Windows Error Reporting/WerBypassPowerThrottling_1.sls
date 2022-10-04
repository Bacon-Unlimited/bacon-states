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
# LOCATION: \User\Windows Components\Windows Error Reporting\WerBypassPowerThrottling_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but does not upload additional report data until the computer is connected to a more permanent power source.
# 
# If you enable this policy setting, WER does not determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.
# 
# If you disable or do not configure this policy setting, WER checks for solutions while a computer is running on battery power, but does not upload report data until the computer is connected to a more permanent power source.
Send additional data when on battery power:
  lgpo.set:
  - name: WerBypassPowerThrottling_1
  - setting: Enabled
  - policy_class: User
