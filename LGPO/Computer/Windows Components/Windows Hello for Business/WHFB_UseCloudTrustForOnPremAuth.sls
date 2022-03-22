# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure Windows Hello for Business to use Azure AD Kerberos for on-premises authentication.
# 
# If you enable this policy setting, Windows Hello for Business will use a Kerberos ticket retrieved from authenticating to Azure for on-premises authentication.
# 
# If you disable or do not configure this policy setting, Windows Hello for Business will use a key or certificate (depending on other policy settings) for on-premises authentication. 
#  
# NOTE: An environment that enables both this policy setting, and the "Use Windows Hello for Business" policy setting requires one or more Windows Server 2016 domain controllers. Otherwise, Windows Hello for Business authentication will fail.
# 
# This policy is only supported on Windows 10, version 21H2 and later.
#         
Use cloud trust for on-premises authentication:
  lgpo.set:
  - name: WHFB_UseCloudTrustForOnPremAuth
  - setting: Enabled
  - policy_class: Machine
