# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage the installation of trusted line-of-business (LOB) or developer-signed Windows Store apps.
# 
# If you enable this policy setting, you can install any LOB or developer-signed Windows Store app (which must be signed with a certificate chain that can be successfully validated by the local computer).
# 
# If you disable or do not configure this policy setting, you cannot install LOB or developer-signed Windows Store apps.
Allow all trusted apps to install:
  lgpo.set:
  - name: AppxDeploymentAllowAllTrustedApps
  - setting: Enabled
  - policy_class: Machine
