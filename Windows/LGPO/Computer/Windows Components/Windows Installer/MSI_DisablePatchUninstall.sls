# SUPPORTED_MSI30
#
# This policy setting controls the ability for users or administrators to remove Windows Installer based updates.
# 
# This policy setting should be used if you need to maintain a tight control over updates. One example is a lockdown environment where you want to ensure that updates once installed cannot be removed by users or administrators.
# 
# If you enable this policy setting, updates cannot be removed from the computer by a user or an administrator. The Windows Installer can still remove an update that is no longer applicable to the product.
# 
# If you disable or do not configure this policy setting, a user can remove an update from the computer only if the user has been granted privileges to remove the update. This can depend on whether the user is an administrator, whether "Disable Windows Installer" and "Always install with elevated privileges" policy settings are set, and whether the update was installed in a per-user managed, per-user unmanaged, or per-machine context."
Prohibit removal of updates:
  lgpo.set:
  - name: MSI_DisablePatchUninstall
  - setting: Enabled
  - policy_class: Machine
