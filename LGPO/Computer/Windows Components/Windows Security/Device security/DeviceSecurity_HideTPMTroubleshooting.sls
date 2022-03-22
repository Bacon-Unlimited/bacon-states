# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#         Hide the Security processor (TPM) troubleshooting area in Windows Security.
# 
#         Enabled:
#         The Security processor (TPM) troubleshooting area will be hidden.
# 
#         Disabled:
#         The Security processor (TPM) troubleshooting area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Security processor (TPM) troubleshooter page:
  lgpo.set:
  - name: DeviceSecurity_HideTPMTroubleshooting
  - setting: Enabled
  - policy_class: Machine
