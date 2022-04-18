# windows:SUPPORTED_Windows_10_0
#
# Specifies the minimum content file size in MB enabled to use Peer Caching.
# 
# Recommended values: 1 MB to 100000 MB.
Minimum Peer Caching Content File Size (in MB):
  lgpo.set:
  - name: MinFileSizeToCache
  - setting:
      MinFileSizeToCache: decimal-placeholder
  - policy_class: Machine
