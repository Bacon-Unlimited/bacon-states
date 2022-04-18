# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the boot and resume optimizations for the hybrid hard disks in the system.
# 
# If you enable this policy setting, the system does not use the non-volatile (NV) cache to optimize boot and resume.
# 
# If you disable this policy setting, the system uses the NV cache to achieve faster boot and resume. The system determines the data that will be stored in the NV cache to optimize boot and resume. The required data is stored in the NV cache during shutdown and hibernate, respectively. This might cause a slight increase in the time taken for shutdown and hibernate.
# 
# If you do not configure this policy setting, the default behavior is observed and the NV cache is used for boot and resume optimizations.
# 
# Note: This policy setting is applicable only if the NV cache feature is on.
Turn off boot and resume optimizations:
  lgpo.set:
  - name: BootResumePolicy
  - setting: Enabled
  - policy_class: Machine
