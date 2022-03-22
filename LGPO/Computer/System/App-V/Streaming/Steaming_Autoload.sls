# windows:SUPPORTED_Windows7
#
# Specifies how new packages should be loaded automatically by App-V on a specific computer.
Specify what to load in background (aka AutoLoad):
  lgpo.set:
  - name: Steaming_Autoload
  - setting:
      Steaming_Autoload_Options: enum-placeholder
  - policy_class: Machine
