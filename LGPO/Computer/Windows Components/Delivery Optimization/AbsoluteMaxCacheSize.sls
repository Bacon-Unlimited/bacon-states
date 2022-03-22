# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum size in GB of Delivery Optimization cache.
# 
# This policy overrides the DOMaxCacheSize policy.
# 
# The value 0 (zero) means "unlimited" cache; Delivery Optimization will clear the cache when the device runs low on disk space.
Absolute Max Cache Size (in GB):
  lgpo.set:
  - name: AbsoluteMaxCacheSize
  - setting:
      AbsoluteMaxCacheSize: decimal-placeholder
  - policy_class: Machine
