# SUPPORTED_MSI15
#
# This policy setting allows you to configure user installs. To configure this policy setting, set it to enabled and use the drop-down list to select the behavior you want.
# 
# If you do not configure this policy setting, or if the policy setting is enabled and "Allow User Installs" is selected, the installer allows and makes use of products that are installed per user, and products that are installed per computer. If the installer finds a per-user install of an application, this hides a per-computer installation of that same product.
# 
# If you enable this policy setting and "Hide User Installs" is selected, the installer ignores per-user applications. This causes a per-computer installed application to be visible to users, even if those users have a per-user install of the product registered in their user profile.
Prohibit User Installs:
  lgpo.set:
  - name: MSI_DisableUserInstalls
  - setting:
      MSI_DisableUserInstallsBox: enum-placeholder
  - policy_class: Machine
