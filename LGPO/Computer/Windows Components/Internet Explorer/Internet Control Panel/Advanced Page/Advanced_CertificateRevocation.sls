# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will check revocation status of servers' certificates. Certificates are revoked when they have been compromised or are no longer valid, and this option protects users from submitting confidential data to a site that may be fraudulent or not secure.
# 
# If you enable this policy setting, Internet Explorer will check to see if server certificates have been revoked.
# 
# If you disable this policy setting, Internet Explorer will not check server certificates to see if they have been revoked.
# 
# If you do not configure this policy setting, Internet Explorer will not check server certificates to see if they have been revoked.
Check for server certificate revocation:
  lgpo.set:
  - name: Advanced_CertificateRevocation
  - setting: Enabled
  - policy_class: Machine
