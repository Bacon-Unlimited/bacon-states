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
