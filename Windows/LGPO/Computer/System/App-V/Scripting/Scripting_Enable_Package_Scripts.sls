# windows:SUPPORTED_Windows7
#
# Enables scripts defined in the package manifest of configuration files that should run.
Enable Package Scripts:
  lgpo.set:
  - name: Scripting_Enable_Package_Scripts
  - setting: Enabled
  - policy_class: Machine
