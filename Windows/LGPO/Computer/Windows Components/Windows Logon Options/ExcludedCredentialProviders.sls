# windows:SUPPORTED_WindowsVista
#
# This policy setting allows the administrator to exclude the specified
# credential providers from use during authentication.
# 
# Note: credential providers are used to process and validate user
# credentials during logon or when authentication is required.
# Windows Vista provides two default credential providers:
# Password and Smart Card. An administrator can install additional
# credential providers for different sets of credentials
# (for example, to support biometric authentication).
# 
# If you enable this policy, an administrator can specify the CLSIDs
# of the credential providers to exclude from the set of installed
# credential providers available for authentication purposes.
# 
# If you disable or do not configure this policy, all installed and otherwise enabled credential providers are available for authentication purposes.
Exclude credential providers:
  lgpo.set:
  - name: ExcludedCredentialProviders
  - setting:
      ExcludedCredentialProviders_Message: text-placeholder
  - policy_class: Machine
