# windows:SUPPORTED_Windows7
#
# Overrides source location for downloading package content.
Package Source Root:
  lgpo.set:
  - name: Streaming_Package_Source_Root
  - setting:
      Package_Source_Root_Prompt: text-placeholder
  - policy_class: Machine
