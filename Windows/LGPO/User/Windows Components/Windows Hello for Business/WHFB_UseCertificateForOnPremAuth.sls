# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure Windows Hello for Business to enroll a sign-in certificate used for on-premises authentication.
# 
# If you enable this policy setting, Windows Hello for Business enrolls a sign-in certificate that is used for on-premises authentication.
# 
# If you disable or do not configure this policy setting, Windows Hello for Business will use a key or a Kerberos ticket (depending on other policy settings) for on-premises authentication.
# 
# NOTE: Disabling or not configuring this policy setting and enabling the "Use Windows Hello for Business" policy setting requires the environment to have one or more Windows Server 2016 domain controllers to prevent Windows Hello for Business authentication from failing.
#         
Use certificate for on-premises authentication:
  lgpo.set:
  - name: WHFB_UseCertificateForOnPremAuth
  - setting: Enabled
  - policy_class: User
