# windows:SUPPORTED_WindowsNET
#
# This policy setting controls whether or not the SYSVOL share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.
# 
# When this setting is enabled, the SYSVOL share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.
# 
# When this setting is disabled or not configured, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.
# 
# By default, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested.
# 
# Note: The SYSVOL share is a share created by the Net Logon service for use by Group Policy clients in the domain. The default behavior of the SYSVOL share ensures that no application with only read permission to files on the sysvol share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the SYSVOL share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the SYSVOL share on the domain will be decreased.
# 
# If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.
Set SYSVOL share compatibility:
  lgpo.set:
  - name: Netlogon_SysvolShareCompatibilityMode
  - setting: Enabled
  - policy_class: Machine
