# windows:SUPPORTED_Windows_6_3
#
# When running in Restricted Admin or Remote Credential Guard mode, participating apps do not expose signed in or supplied credentials to a remote host. Restricted Admin limits access to resources located on other servers or networks from the remote host because credentials are not delegated. Remote Credential Guard does not limit access to resources because it redirects all requests back to the client device.
# 
# Participating apps:
# Remote Desktop Client
# 
# If you enable this policy setting, the following options are supported:
#  
# Restrict credential delegation: Participating applications must use Restricted Admin or Remote Credential Guard to connect to remote hosts.
#  
# Require Remote Credential Guard: Participating applications must use Remote Credential Guard to connect to remote hosts.
#  
# Require Restricted Admin: Participating applications must use Restricted Admin to connect to remote hosts.
# 
# If you disable or do not configure this policy setting, Restricted Admin and Remote Credential Guard mode are not enforced and participating apps can delegate credentials to remote devices.
# 
# Note: To disable most credential delegation, it may be sufficient to deny delegation in Credential Security Support Provider (CredSSP) by modifying Administrative template settings (located at Computer Configuration\Administrative Templates\System\Credentials Delegation).
# 
# Note: On Windows 8.1 and Windows Server 2012 R2, enabling this policy will enforce Restricted Administration mode, regardless of the mode chosen. These versions do not support Remote Credential Guard.
# 
Restrict delegation of credentials to remote servers:
  lgpo.set:
  - name: RestrictedRemoteAdministration
  - setting:
      RestrictedRemoteAdministrationDrop: enum-placeholder
  - policy_class: Machine
