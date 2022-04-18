# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#         Hide the Secure boot area in Windows Security.
# 
#         Enabled:
#         The Secure boot area will be hidden.
# 
#         Disabled:
#         The Secure boot area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Secure boot area:
  lgpo.set:
  - name: DeviceSecurity_HideSecureBoot
  - setting: Enabled
  - policy_class: Machine
