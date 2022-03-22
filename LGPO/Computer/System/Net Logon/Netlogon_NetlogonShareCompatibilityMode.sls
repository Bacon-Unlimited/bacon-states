# windows:SUPPORTED_WindowsNET
#
# This policy setting controls whether or not the Netlogon share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.
# 
# If you enable this policy setting, the Netlogon share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.
# 
# If you disable or do not configure this policy setting, the Netlogon share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.
# 
# By default, the Netlogon share will grant shared read access to files on the share when exclusive access is requested.
# 
# Note: The Netlogon share is a share created by the Net Logon service for use by client machines in the domain. The default behavior of the Netlogon share ensures that no application with only read permission to files on the Netlogon share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the Netlogon share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the Netlogon share on the domain will be decreased.
# 
# If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.
Set Netlogon share compatibility:
  lgpo.set:
  - name: Netlogon_NetlogonShareCompatibilityMode
  - setting: Enabled
  - policy_class: Machine
