# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control whether elliptic curve cryptography (ECC) certificates on a smart card can be used to log on to a domain.
# 
# If you enable this policy setting, ECC certificates on a smart card can be used to log on to a domain.
# 
# If you disable or do not configure this policy setting, ECC certificates on a smart card cannot be used to log on to a domain. 
# 
# Note: This policy setting only affects a user's ability to log on to a domain. ECC certificates on a smart card that are used for other applications, such as document signing, are not affected by this policy setting. 
# Note: If you use an ECDSA key to log on, you must also have an associated ECDH key to permit logons when you are not connected to the network.
Allow ECC certificates to be used for logon and authentication:
  lgpo.set:
  - name: EnumerateECCCerts
  - setting: Enabled
  - policy_class: Machine
