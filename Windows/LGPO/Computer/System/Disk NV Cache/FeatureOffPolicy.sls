# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off all support for the non-volatile (NV) cache on all hybrid hard disks in the system. To check if you have hybrid hard disks in the system, from Device Manager, right-click the disk drive and select Properties. The NV cache can be used to optimize boot and resume by reading data from the cache while the disks are spinning up. The NV cache can also be used to reduce the power consumption of the system by keeping the disks spun down while satisfying reads and writes from the cache.
# 
# If you enable this policy setting, the system will not manage the NV cache and will not enable NV cache power saving mode.
# 
# If you disable this policy setting, the system will manage the NV cache on the disks if the other policy settings for the NV cache are appropriately configured.
# 
# Note: This policy setting will take effect on next boot.
# 
# If you do not configure this policy setting, the default behavior is to turn on support for the NV cache.
Turn off non-volatile cache feature:
  lgpo.set:
  - name: FeatureOffPolicy
  - setting: Enabled
  - policy_class: Machine
