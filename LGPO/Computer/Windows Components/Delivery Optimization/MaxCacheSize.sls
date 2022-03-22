# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum cache size that Delivery Optimization uses as a percentage of available disk size (1-100).
Max Cache Size (percentage):
  lgpo.set:
  - name: MaxCacheSize
  - setting:
      MaxCacheSize: decimal-placeholder
  - policy_class: Machine
