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
# LOCATION: \Computer\System\Trusted Platform Module Services\ClearTPMIfNotReady_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting configures the system to prompt the user to clear the TPM if the TPM is detected to be in any state other than Ready. This policy will take effect only if the systems TPM is in a state other than Ready, including if the TPM is Ready, with reduced functionality. The prompt to clear the TPM will start occurring after the next reboot, upon user login only if the logged in user is part of the Administrators group for the system. The prompt can be dismissed, but will reappear after every reboot and login until the policy is disabled or until the TPM is in a Ready state.
Configure the system to clear the TPM if it is not in a ready state.:
  lgpo.set:
  - name: ClearTPMIfNotReady_Name
  - setting: Enabled
  - policy_class: Machine
