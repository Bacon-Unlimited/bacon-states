# windows:SUPPORTED_Windows_10_0
#
# Specifies the minimum RAM size in GB required to use Peer Caching.
# 
# For example if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching.
# 
# Recommended values: 1 GB to 4 GB.
Minimum RAM capacity (inclusive) required to enable use of Peer Caching (in GB):
  lgpo.set:
  - name: MinRAMAllowedToPeer
  - setting:
      MinRAMAllowedToPeer: decimal-placeholder
  - policy_class: Machine
