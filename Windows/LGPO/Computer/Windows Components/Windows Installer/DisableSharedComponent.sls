# SUPPORTED_MSI45
#
# This policy setting controls the ability to turn off shared components.
# 
# If you enable this policy setting, no packages on the system get the shared component functionality enabled by the msidbComponentAttributesShared attribute in the Component Table.
# 
# If you disable or do not configure this policy setting, by default, the shared component functionality is allowed.
Turn off shared components:
  lgpo.set:
  - name: DisableSharedComponent
  - setting: Enabled
  - policy_class: Machine
