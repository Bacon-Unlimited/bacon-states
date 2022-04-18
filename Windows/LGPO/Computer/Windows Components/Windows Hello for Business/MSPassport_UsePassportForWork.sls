# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows Hello for Business is an alternative method for signing into Windows using your Active Directory or Azure Active Directory account that can replace passwords, Smart Cards, and Virtual Smart Cards.
# 
# If you enable this policy, the device provisions Windows Hello for Business using keys or certificates for all users.
# 
# If you disable this policy setting, the device does not provision Windows Hello for Business for any user.
# 
# If you do not configure this policy setting, users can provision Windows Hello for Business as a convenience credential that encrypts their domain password.
# 
# Select "Do not start Windows Hello provisioning after sign-in" when you use a third-party solution to provision Windows Hello for Business.
# 
# If you select "Do not start Windows Hello provisioning after sign-in", Windows Hello for Business does not automatically start provisioning after the user has signed in.
# 
# If you do not select "Do not start Windows Hello provisioning after sign-in", Windows Hello for Business automatically starts provisioning after the user has signed in.
# 
#         
Use Windows Hello for Business:
  lgpo.set:
  - name: MSPassport_UsePassportForWork
  - setting:
      MSPassport_DisablePostLogonProvisioning: boolean-placeholder
  - policy_class: Machine
