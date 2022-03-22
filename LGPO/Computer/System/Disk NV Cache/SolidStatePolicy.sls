# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the solid state mode for the hybrid hard disks. 
# 
# If you enable this policy setting, frequently written files such as the file system metadata and registry may not be stored in the NV cache.
# 
# If you disable this policy setting, the system will store frequently written data into the non-volatile (NV) cache. This allows the system to exclusively run out of the NV cache and power down the disk for longer periods to save power. Note that this can cause increased wear of the NV cache.
# 
# If you do not configure this policy setting, the default behavior of the system is observed and frequently written files will be stored in the NV cache.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off solid state mode:
  lgpo.set:
  - name: SolidStatePolicy
  - setting: Enabled
  - policy_class: Machine
