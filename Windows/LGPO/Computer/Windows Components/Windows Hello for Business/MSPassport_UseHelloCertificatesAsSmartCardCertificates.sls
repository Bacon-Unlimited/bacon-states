# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# If you enable this policy setting, applications use Windows Hello for Business certificates as smart card certificates. Biometric factors are unavailable when a user is asked to authorize the use of the certificate's private key. This policy setting is designed to allow compatibility with applications that rely exclusively on smart card certificates.
# 
# If you disable or do not configure this policy setting, applications do not use Windows Hello for Business certificates as smart card certificates, and biometric factors are available when a user is asked to authorize the use of the certificate's private key.
# 
# This policy setting is incompatible with Windows Hello for Business credentials provisioned when the "Turn off smart card emulation" is enabled.
# 
# Windows requires a user to lock and unlock their session after changing this setting if the user is currently signed in.
#         
Use Windows Hello for Business certificates as smart card certificates:
  lgpo.set:
  - name: MSPassport_UseHelloCertificatesAsSmartCardCertificates
  - setting: Enabled
  - policy_class: Machine
