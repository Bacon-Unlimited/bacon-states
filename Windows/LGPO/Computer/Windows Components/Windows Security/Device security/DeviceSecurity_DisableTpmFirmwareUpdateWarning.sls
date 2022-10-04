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
# LOCATION: \Computer\Windows Components\Windows Security\Device security\DeviceSecurity_DisableTpmFirmwareUpdateWarning.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#         Hide the recommendation to update TPM Firmware when a vulnerable firmware is detected.
# 
#         Enabled:
#         Users will not be shown a recommendation to update their TPM Firmware.
# 
#         Disabled:
#         Users will see a recommendation to update their TPM Firmware if Windows Security detects the system contains a TPM with vulnerable firmware.        
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the TPM Firmware Update recommendation.:
  lgpo.set:
  - name: DeviceSecurity_DisableTpmFirmwareUpdateWarning
  - setting: Enabled
  - policy_class: Machine
