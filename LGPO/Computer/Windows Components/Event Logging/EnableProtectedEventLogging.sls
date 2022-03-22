# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting lets you configure Protected Event Logging.
# 
# If you enable this policy setting, components that support it will use the certificate you supply to encrypt potentially sensitive event log data before writing it to the event log. Data will be encrypted using the Cryptographic Message Syntax (CMS) standard and the public key you provide. You can use the Unprotect-CmsMessage PowerShell cmdlet to decrypt these encrypted messages, provided that you have access to the private key corresponding to the public key that they were encrypted with.
# 
# If you disable or do not configure this policy setting, components will not encrypt event log messages before writing them to the event log.
#             
Enable Protected Event Logging:
  lgpo.set:
  - name: EnableProtectedEventLogging
  - setting:
      EncryptionCertificate: multiText-placeholder
  - policy_class: Machine
