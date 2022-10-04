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
# LOCATION: \Computer\Windows Components\Windows Security\Device security\DeviceSecurity_DisableClearTpmButton.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#         Disable the Clear TPM button in Windows Security.
# 
#         Enabled:
#         The Clear TPM button will be unavailable for use.
# 
#         Disabled:
#         The Clear TPM button will be available for use.
# 
#         Not configured:
#         Same as Disabled.
#     
Disable the Clear TPM button:
  lgpo.set:
  - name: DeviceSecurity_DisableClearTpmButton
  - setting: Enabled
  - policy_class: Machine
