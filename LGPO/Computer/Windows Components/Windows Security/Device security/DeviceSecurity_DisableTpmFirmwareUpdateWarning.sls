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
