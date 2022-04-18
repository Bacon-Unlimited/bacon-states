# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully.
# 
# The value 0 (zero) means "unlimited"; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size has not exceeded.
Max Cache Age (in seconds):
  lgpo.set:
  - name: MaxCacheAge
  - setting:
      MaxCacheAge: decimal-placeholder
  - policy_class: Machine
