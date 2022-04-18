# windows:SUPPORTED_WindowsVista
#
# This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).
# 
# This policy setting applies when server authentication was achieved via NTLM.
# 
# If you enable this policy setting, you can specify the servers to which the user's fresh credentials can be delegated (fresh credentials are those that you are prompted for when executing the application).
# 
# If you do not configure (by default) this policy setting, after proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).
# 
# If you disable this policy setting, delegation of fresh credentials is not permitted to any machine.
# 
# Note: The "Allow delegating fresh credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.
# 
# For Example:
# TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
# TERMSRV/* Remote Desktop Session Host running on all machines.
# TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com
Allow delegating fresh credentials with NTLM-only server authentication:
  lgpo.set:
  - name: AllowFreshCredentialsWhenNTLMOnly
  - setting:
      AllowFreshCredentialsWhenNTLMOnly_Name:
      - placeholder1
      - placeholder2
      ConcatenateDefaults_AFCN: boolean-placeholder
  - policy_class: Machine
