# windows:SUPPORTED_Windows_10_0_RS6
#
# 
#           Enable this setting when Feature Updates should be deployed to devices without blocking on any safeguard holds.Safeguard holds are known compatibility issues that block the upgrade from being deployed to affected devices until the issue is resolved.Enabling this policy can allow an organization to deploy the Feature Update to devices for testing, or to deploy the Feature Update without blocking on safeguard holds.
#       
Disable safeguards for Feature Updates:
  lgpo.set:
  - name: DisableWUfBSafeguards
  - setting: Enabled
  - policy_class: Machine
