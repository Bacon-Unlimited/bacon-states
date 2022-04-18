# windows:SUPPORTED_Windows7
#
# If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support is not desired, this should be disabled. The client can then apply HTTP optimizations which are incompatible with BranchCache
Enable Support for BranchCache:
  lgpo.set:
  - name: Streaming_Support_Branch_Cache
  - setting: Enabled
  - policy_class: Machine
