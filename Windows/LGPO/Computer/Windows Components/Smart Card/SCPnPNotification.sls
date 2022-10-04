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
# LOCATION: \Computer\Windows Components\Smart Card\SCPnPNotification.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control whether a confirmation message is displayed when a smart card device driver is installed.
# 
# If you enable or do not configure this policy setting, a confirmation message will be displayed when a smart card device driver is installed.
# 
# If you disable this policy setting, a confirmation message will not be displayed when a smart card device driver is installed.
# 
# Note: This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.
Notify user of successful smart card driver installation:
  lgpo.set:
  - name: SCPnPNotification
  - setting: Enabled
  - policy_class: Machine
