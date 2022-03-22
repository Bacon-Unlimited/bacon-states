# SUPPORTED_MSI30
#
# This policy setting controls the ability of non-administrators to install updates that have been digitally signed by the application vendor.
# 
# Non-administrator updates provide a mechanism for the author of an application to create digitally signed updates that can be applied by non-privileged users.
# 
# If you enable this policy setting, only administrators or users with administrative privileges can apply updates to Windows Installer based applications.
# 
# If you disable or do not configure this policy setting, users without administrative privileges can install non-administrator updates.
Prohibit non-administrators from applying vendor signed updates:
  lgpo.set:
  - name: MSI_DisableLUAPatching
  - setting: Enabled
  - policy_class: Machine
