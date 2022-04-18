# windows:SUPPORTED_Windows_10_0
#
# Specifies whether Virtualization Based Security is enabled.
# 
# Virtualization Based Security uses the Windows Hypervisor to provide support for security services. Virtualization Based Security requires Secure Boot, and can optionally be enabled with the use of DMA Protections. DMA protections require hardware support and will only be enabled on correctly configured devices.
# 
# Virtualization Based Protection of Code Integrity
# 
# This setting enables virtualization based protection of Kernel Mode Code Integrity. When this is enabled, kernel mode memory protections are enforced and the Code Integrity validation path is protected by the Virtualization Based Security feature.
# 
# The "Disabled" option turns off Virtualization Based Protection of Code Integrity remotely if it was previously turned on with the "Enabled without lock" option.
#  
# The "Enabled with UEFI lock" option ensures that Virtualization Based Protection of Code Integrity cannot be disabled remotely. In order to disable the feature, you must set the Group Policy to "Disabled" as well as remove the security functionality from each computer, with a physically present user, in order to clear configuration persisted in UEFI.
#  
# The "Enabled without lock" option allows Virtualization Based Protection of Code Integrity to be disabled remotely by using Group Policy. 
# 
# The "Not Configured" option leaves the policy setting undefined. Group Policy does not write the policy setting to the registry, and so it has no impact on computers or users. If there is a current setting in the registry it will not be modified.
# 
# The "Require UEFI Memory Attributes Table" option will only enable Virtualization Based Protection of Code Integrity on devices with UEFI firmware support for the Memory Attributes Table. Devices without the UEFI Memory Attributes Table may have firmware that is incompatible with Virtualization Based Protection of Code Integrity which in some cases can lead to crashes or data loss or incompatibility with certain plug-in cards. If not setting this option the targeted devices should be tested to ensure compatibility.
# 
# Warning: All drivers on the system must be compatible with this feature or the system may crash. Ensure that this policy setting is only deployed to computers which are known to be compatible. 
# 
# Credential Guard
# 
# This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials.
# 
# The "Disabled" option turns off Credential Guard remotely if it was previously turned on with the "Enabled without lock" option.
# 
# The "Enabled with UEFI lock" option ensures that Credential Guard cannot be disabled remotely. In order to disable the feature, you must set the Group Policy to "Disabled" as well as remove the security functionality from each computer, with a physically present user, in order to clear configuration persisted in UEFI.
# 
# The "Enabled without lock" option allows Credential Guard to be disabled remotely by using Group Policy. The devices that use this setting must be running at least Windows 10 (Version 1511).
# 
# The "Not Configured" option leaves the policy setting undefined. Group Policy does not write the policy setting to the registry, and so it has no impact on computers or users. If there is a current setting in the registry it will not be modified.
#       
# Secure Launch
# 
# This setting sets the configuration of Secure Launch to secure the boot chain.
# 
# The "Not Configured" setting is the default, and allows configuration of the feature by Administrative users.
# 
# The "Enabled" option turns on Secure Launch on supported hardware.
# 
# The "Disabled" option turns off Secure Launch, regardless of hardware support.
#       
Turn On Virtualization Based Security:
  lgpo.set:
  - name: VirtualizationBasedSecurity
  - setting:
      CheckboxMAT: boolean-placeholder
      CredentialIsolationDrop: enum-placeholder
      HypervisorEnforcedCodeIntegrityDrop: enum-placeholder
      RequirePlatformSecurityFeaturesDrop: enum-placeholder
      SystemGuardDrop: enum-placeholder
  - policy_class: Machine
