# windows:SUPPORTED_Windows7
#
# Specifies directory where all new applications and updates will be installed.
Package Installation Root:
  lgpo.set:
  - name: Streaming_Package_Installation_Root
  - setting:
      Streaming_Package_Installation_Root_Prompt: text-placeholder
  - policy_class: Machine
