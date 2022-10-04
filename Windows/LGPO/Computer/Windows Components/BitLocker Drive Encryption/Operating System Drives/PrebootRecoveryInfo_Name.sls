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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\PrebootRecoveryInfo_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.
# 
# If you select the "Use default recovery message and URL" option, the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and select the "Use default recovery message and URL" option.
# 
# If you select the "Use custom recovery message" option, the message you type in the "Custom recovery message option" text box will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message.
# 
# If you select the "Use custom recovery URL" option, the URL you type in the "Custom recovery URL option" text box will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen.
# 
# Note: Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.
#       
Configure pre-boot recovery message and URL:
  lgpo.set:
  - name: PrebootRecoveryInfo_Name
  - setting:
      PrebootRecoveryInfoDropDown_Name: enum-placeholder
      RecoveryMessage_Input: text-placeholder
      RecoveryUrl_Input: text-placeholder
  - policy_class: Machine
