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
# LOCATION: \Computer\Windows Components\App Privacy\LetAppsActivateWithVoice.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Windows apps can be activated by voice.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, Windows apps are allowed to be activated with a voice keyword and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, Windows apps are not allowed to be activated with a voice keyword and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.
# 
# This policy is applied to Windows apps and Cortana.
#       
Let Windows apps activate with voice:
  lgpo.set:
  - name: LetAppsActivateWithVoice
  - setting:
      LetAppsActivateWithVoice_Enum: enum-placeholder
  - policy_class: Machine
