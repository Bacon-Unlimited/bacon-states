# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you allow certificates without an Extended Key Usage (EKU) set to be used for logon.
# 
# In versions of Windows prior to Windows Vista, smart card certificates that are used for logon require an enhanced key usage (EKU) extension with a smart card logon object identifier. This policy setting can be used to modify that restriction.
# 
# If you enable this policy setting, certificates with the following attributes can also be used to log on with a smart card:
# - Certificates with no EKU
# - Certificates with an All Purpose EKU
# - Certificates with a Client Authentication EKU
# 
# If you disable or do not configure this policy setting, only certificates that contain the smart card logon object identifier can be used to log on with a smart card.
Allow certificates with no extended key usage certificate attribute:
  lgpo.set:
  - name: AllowCertificatesWithNoEKU
  - setting: Enabled
  - policy_class: Machine
