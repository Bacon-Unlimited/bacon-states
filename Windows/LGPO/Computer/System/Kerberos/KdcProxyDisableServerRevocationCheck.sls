# windows:SUPPORTED_Windows8
#
# This policy setting allows you to disable revocation check for the SSL certificate of the targeted KDC proxy server.
# 
# If you enable this policy setting, revocation check for the SSL certificate of the KDC proxy server is ignored by the Kerberos client. This policy setting should only be used in troubleshooting KDC proxy connections. 
# Warning: When revocation check is ignored, the server represented by the certificate is not guaranteed valid. 
# 
# If you disable or do not configure this policy setting, the Kerberos client enforces the revocation check for the SSL certificate. The connection to the KDC proxy server is not established if the revocation check fails.
# 
Disable revocation checking for the SSL certificate of KDC proxy servers:
  lgpo.set:
  - name: KdcProxyDisableServerRevocationCheck
  - setting: Enabled
  - policy_class: Machine
