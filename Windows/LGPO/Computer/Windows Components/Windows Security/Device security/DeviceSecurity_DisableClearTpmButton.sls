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
