# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting configures the TPM to use the Dictionary Attack Prevention Parameters (lockout threshold and recovery time) to the values that were used for Windows 10 Version 1607 and below. Setting this policy will take effect only if a) the TPM was originally prepared using a version of Windows after Windows 10 Version 1607 and b) the System has a TPM 2.0. Note that enabling this policy will only take effect after the TPM maintenance task runs (which typically happens after a system restart). Once this policy has been enabled on a system and has taken effect (after a system restart), disabling it will have no impact and the system's TPM will remain configured using the legacy Dictionary Attack Prevention parameters, regardless of the value of this group policy. The only way for the disabled setting of this policy to take effect on a system where it was once enabled is to a) disable it from group policy and b)clear the TPM on the system.
Configure the system to use legacy Dictionary Attack Prevention Parameters setting for TPM 2.0.:
  lgpo.set:
  - name: UseLegacyDAP_Name
  - setting: Enabled
  - policy_class: Machine
