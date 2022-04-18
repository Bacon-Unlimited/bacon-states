# windows:SUPPORTED_Windows_10_0_RS7_NOSERVER
#
# This setting enables and configures the device-based tenant restrictions feature for Azure Active Directory.
# 
# When you enable this setting, compliant applications will be prevented from accessing disallowed tenants, according to a policy set in your Azure AD tenant.
# 
# Note: Creation of a policy in your home tenant is required, and additional security measures for managed devices are recommended for best protection. Refer to Azure AD Tenant Restrictions for more details.
# 
# https://go.microsoft.com/fwlink/?linkid=2148762
# 
# Before enabling firewall protection, ensure that a Windows Defender Application Control (WDAC) policy that correctly tags applications has been applied to the target devices. Enabling firewall protection without a corresponding WDAC policy will prevent all applications from reaching Microsoft endpoints. This firewall setting is not supported on all versions of Windows - see the following link for more information. 
# For details about setting up WDAC with tenant restrictions, see https://go.microsoft.com/fwlink/?linkid=2155230
Cloud Policy Details:
  lgpo.set:
  - name: trv2_payload
  - setting:
      EnforceFirewall: boolean-placeholder
      PayloadCloudId: text-placeholder
      PayloadHostnamesId: multiText-placeholder
      PayloadIpRangesId: multiText-placeholder
      PayloadPolicyId: text-placeholder
      PayloadSubdomainSupportedHostnamesId: multiText-placeholder
      PayloadTenantId: text-placeholder
  - policy_class: Machine
