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
# LOCATION: \Computer\Windows Components\App Privacy\LetAppsActivateWithVoiceAboveLock.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting specifies whether Windows apps can be activated by voice while the system is locked.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, users can interact with applications using speech while the system is locked and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, users cannot interact with applications using speech while the system is locked and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.
# 
# This policy is applied to Windows apps and Cortana. It takes precedence of the Allow Cortana above lock policy. This policy is applicable only when Allow voice activation policy is configured to allow applications to be activated with voice.
#       
Let Windows apps activate with voice while the system is locked:
  lgpo.set:
  - name: LetAppsActivateWithVoiceAboveLock
  - setting:
      LetAppsActivateWithVoiceAboveLock_Enum: enum-placeholder
  - policy_class: Machine
