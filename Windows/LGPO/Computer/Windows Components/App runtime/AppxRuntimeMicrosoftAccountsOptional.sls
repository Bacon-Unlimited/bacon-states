# windows:SUPPORTED_Windows_6_3
#
# This policy setting lets you control whether Microsoft accounts are optional for Windows Store apps that require an account to sign in. This policy only affects Windows Store apps that support it.
# 
# If you enable this policy setting, Windows Store apps that typically require a Microsoft account to sign in will allow users to sign in with an enterprise account instead.
# 
# If you disable or do not configure this policy setting, users will need to sign in with a Microsoft account.
Allow Microsoft accounts to be optional:
  lgpo.set:
  - name: AppxRuntimeMicrosoftAccountsOptional
  - setting: Enabled
  - policy_class: Machine
