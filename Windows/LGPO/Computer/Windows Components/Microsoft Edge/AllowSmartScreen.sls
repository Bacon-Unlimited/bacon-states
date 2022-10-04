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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowSmartScreen.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your employees from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on.
# 
# If you enable this setting, Windows Defender SmartScreen is turned on and employees can't turn it off.
# 
# If you disable this setting, Windows Defender SmartScreen is turned off and employees can't turn it on.
# 
# If you don't configure this setting, employees can choose whether to use Windows Defender SmartScreen.
Configure Windows Defender SmartScreen:
  lgpo.set:
  - name: AllowSmartScreen
  - setting: Enabled
  - policy_class: Machine
