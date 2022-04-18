# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether to automatically update root certificates using the Windows Update website. 
# 
# Typically, a certificate is used when you use a secure website or when you send and receive secure email. Anyone can issue certificates, but to have transactions that are as secure as possible, certificates must be issued by a trusted certificate authority (CA). Microsoft has included a list in Windows XP and other products of companies and organizations that it considers trusted authorities.
# 
# If you enable this policy setting, when you are presented with a certificate issued by an untrusted root authority, your computer will not contact the Windows Update website to see if Microsoft has added the CA to its list of trusted authorities.
# 
# If you disable or do not configure this policy setting, your computer will contact the Windows Update website.
Turn off Automatic Root Certificates Update:
  lgpo.set:
  - name: CertMgr_DisableAutoRootUpdates
  - setting: Enabled
  - policy_class: Machine
