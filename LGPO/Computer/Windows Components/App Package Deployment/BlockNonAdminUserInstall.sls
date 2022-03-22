# windows:SUPPORTED_Windows_10_0
#
# Manages non-Administrator users' ability to install Windows app packages.
# 
#         If you enable this policy, non-Administrators will be unable to initiate installation of Windows app packages. Administrators who wish to install an app will need to do so from an Administrator context (for example, an Administrator PowerShell window). All users will still be able to install Windows app packages via the Microsoft Store, if permitted by other policies.
# 
#         If you disable or do not configure this policy, all users will be able to initiate installation of Windows app packages.
#       
Prevent non-admin users from installing packaged Windows apps:
  lgpo.set:
  - name: BlockNonAdminUserInstall
  - setting: Enabled
  - policy_class: Machine
