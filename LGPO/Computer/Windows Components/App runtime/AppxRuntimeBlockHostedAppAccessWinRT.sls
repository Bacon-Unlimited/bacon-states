# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting controls whether Universal Windows apps with Windows Runtime API access directly from web content can be launched.
# 
#         If you enable this policy setting, Universal Windows apps which declare Windows Runtime API access in ApplicationContentUriRules section of the manifest cannot be launched; Universal Windows apps which have not declared Windows Runtime API access in the manifest are not affected.
# 
#         If you disable or do not configure this policy setting, all Universal Windows apps can be launched.
# 
#         This policy should not be enabled unless recommended by Microsoft as a security response because it can cause severe app compatibility issues.
#       
Block launching Universal Windows apps with Windows Runtime API access from hosted content.:
  lgpo.set:
  - name: AppxRuntimeBlockHostedAppAccessWinRT
  - setting: Enabled
  - policy_class: Machine
