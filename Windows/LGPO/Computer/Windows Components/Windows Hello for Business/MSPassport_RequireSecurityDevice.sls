# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# A Trusted Platform Module (TPM) provides additional security benefits over software because data protected by it cannot be used on other devices.
# 
# If you enable this policy setting, Windows Hello for Business provisioning only occurs on devices with usable 1.2 or 2.0 TPMs. You can optionally exclude security devices, which prevents Windows Hello for Business provisioning from using those devices.
# 
# If you disable or do not configure this policy setting, the TPM is still preferred, but all devices may provision Windows Hello for Business using software if the TPM is non-functional or unavailable.
#         
Use a hardware security device:
  lgpo.set:
  - name: MSPassport_RequireSecurityDevice
  - setting:
      MSPassport_ExcludeTPM12DataType: boolean-placeholder
  - policy_class: Machine
