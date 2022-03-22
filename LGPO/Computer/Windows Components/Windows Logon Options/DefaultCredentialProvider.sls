# windows:SUPPORTED_Windows_10_0
#
# This policy setting allows the administrator to assign a specified credential provider as the default credential provider.
# 
# If you enable this policy setting, the specified credential provider is selected on other user tile.
# 
# If you disable or do not configure this policy setting, the system picks the default credential provider on other user tile.
# 
# Note: A list of registered credential providers and their GUIDs can be found in the registry at HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\Credential Providers.
Assign a default credential provider:
  lgpo.set:
  - name: DefaultCredentialProvider
  - setting:
      DefaultCredentialProvider_Message: text-placeholder
  - policy_class: Machine
