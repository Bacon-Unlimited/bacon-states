# windows:SUPPORTED_Windows_10_0
#
# Specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The cloud service set default value will be used.
# 
# Recommended values: 64 GB to 256 GB.
# 
# Note: If the DOModifyCacheDrive policy is set, the disk size check will apply to the new working directory specified by this policy.
Minimum disk size allowed to use Peer Caching (in GB):
  lgpo.set:
  - name: MinDiskSizeAllowedToPeer
  - setting:
      MinDiskSizeAllowedToPeer: decimal-placeholder
  - policy_class: Machine
