# windows:SUPPORTED_Windows7
#
#  This policy setting allows you to configure this server so that Kerberos can decrypt a ticket that contains this system-generated SPN. When an application attempts to make a remote procedure call (RPC) to this server with a NULL value for the service principal name (SPN), computers running Windows 7 or later attempt to use Kerberos by generating an SPN.
#               
# If you enable this policy setting, only services running as LocalSystem or NetworkService are allowed to accept these connections. Services running as identities different from LocalSystem or NetworkService might fail to authenticate.
# 
# If you disable or do not configure this policy setting, any service is allowed to accept incoming connections by using this system-generated SPN.
Require strict target SPN match on remote procedure calls:
  lgpo.set:
  - name: StrictTarget
  - setting: Enabled
  - policy_class: Machine
