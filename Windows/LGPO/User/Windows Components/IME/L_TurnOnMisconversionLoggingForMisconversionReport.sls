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
# LOCATION: \User\Windows Components\IME\L_TurnOnMisconversionLoggingForMisconversionReport.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn on logging of misconversion for the misconversion report.
# 
# If you enable this policy setting, misconversion logging is turned on.
# 
# If you disable or do not configure this policy setting, misconversion logging is turned off.
# 
# This policy setting applies to Japanese Microsoft IME and Traditional Chinese IME.
Turn on misconversion logging for misconversion report:
  lgpo.set:
  - name: L_TurnOnMisconversionLoggingForMisconversionReport
  - setting: Enabled
  - policy_class: User
