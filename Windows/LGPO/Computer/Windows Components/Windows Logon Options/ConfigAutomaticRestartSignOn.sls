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
# LOCATION: \Computer\Windows Components\Windows Logon Options\ConfigAutomaticRestartSignOn.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS6_NOSERVER
#
# This policy setting controls the configuration under which an automatic restart and sign on and lock occurs after a restart or cold boot. If you chose Disabled in the Sign-in and lock last interactive user automatically after a restart policy, then automatic sign on will not occur and this policy does not need to be configured.
# 
# If you enable this policy setting, you can choose one of the following two options:
# 
# 1. Enabled if BitLocker is on and not suspended specifies that automatic sign on and lock will only occur if BitLocker is active and not suspended during the reboot or shutdown. Personal data can be accessed on the devices hard drive at this time if BitLocker is not on or suspended during an update. BitLocker suspension temporarily removes protection for system components and data but may be needed in certain circumstances to successfully update boot-critical components.
#      BitLocker is suspended during updates if:
#         - The device doesnt have TPM 2.0 and PCR7, or
#         - The device doesnt use a TPM-only protector
# 2. Always Enabled specifies that automatic sign on will happen even if BitLocker is off or suspended during reboot or shutdown. When BitLocker is not enabled, personal data is accessible on the hard drive. Automatic restart and sign on should only be run under this condition if you are confident that the configured device is in a secure physical location.
# 
# If you disable or dont configure this setting, automatic sign on will default to the Enabled if BitLocker is on and not suspended behavior.
Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot:
  lgpo.set:
  - name: ConfigAutomaticRestartSignOn
  - setting:
      ConfigAutomaticRestartSignOnDescription: enum-placeholder
  - policy_class: Machine
