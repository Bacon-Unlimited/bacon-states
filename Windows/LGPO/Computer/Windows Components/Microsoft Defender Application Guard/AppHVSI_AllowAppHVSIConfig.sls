# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting enables application isolation through Microsoft Defender Application Guard.
# 
# Application Guard uses Windows Hypervisor to create a virtualized environment for apps that are configured to use virtualization-based security isolation. While in isolation, improper user interactions and app vulnerabilities cant compromise the kernel or any other apps running outside of the virtualized environment.
# 
# If you enable this setting, Application Guard is turned on for your organization.
#         
Turn on Microsoft Defender Application Guard in Managed Mode:
  lgpo.set:
  - name: AppHVSI_AllowAppHVSIConfig
  - setting:
      AppHVSI_AllowAppHVSI_TextBox: decimal-placeholder
  - policy_class: Machine
