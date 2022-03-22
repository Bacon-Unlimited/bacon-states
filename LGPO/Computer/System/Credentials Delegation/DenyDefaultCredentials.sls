# windows:SUPPORTED_WindowsVista
#
# This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).
# 
# If you enable this policy setting, you can specify the servers to which the user's default credentials cannot be delegated (default credentials are those that you use when first logging on to Windows).
# 
# If you disable or do not configure (by default) this policy setting, this policy setting does not specify any server.
# 
# Note: The "Deny delegating default credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials cannot be delegated. The use of a single wildcard character is permitted when specifying the SPN.
# 
# For Example:
# TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
# TERMSRV/* Remote Desktop Session Host running on all machines.
# TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com
# 
# This policy setting can be used in combination with the "Allow delegating default credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating default credentials" server list.
Deny delegating default credentials:
  lgpo.set:
  - name: DenyDefaultCredentials
  - setting:
      ConcatenateDefaults_DDC: boolean-placeholder
      DenyDefaultCredentials_Name:
      - placeholder1
      - placeholder2
  - policy_class: Machine
