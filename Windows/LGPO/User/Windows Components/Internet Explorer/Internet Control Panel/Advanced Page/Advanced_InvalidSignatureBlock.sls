# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether software, such as ActiveX controls and file downloads, can be installed or run by the user even though the signature is invalid. An invalid signature might indicate that someone has tampered with the file.
# 
# If you enable this policy setting, users will be prompted to install or run files with an invalid signature.
# 
# If you disable this policy setting, users cannot run or install files with an invalid signature.
# 
# If you do not configure this policy, users can choose to run or install files with an invalid signature.
Allow software to run or install even if the signature is invalid:
  lgpo.set:
  - name: Advanced_InvalidSignatureBlock
  - setting: Enabled
  - policy_class: User
