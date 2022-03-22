# windows:SUPPORTED_Windows_10_0
#
# This policy setting allows retrieving the cloud kerberos ticket during the logon.
# 
# If you disable or do not configure this policy setting, the cloud kerberos ticket is not retrieved during the logon.
# 
# If you enable this policy setting, the cloud kerberos ticket is retrieved during the logon.
Allow retrieving the cloud kerberos ticket during the logon:
  lgpo.set:
  - name: CloudKerberosTicketRetrievalEnabled
  - setting: Enabled
  - policy_class: Machine
