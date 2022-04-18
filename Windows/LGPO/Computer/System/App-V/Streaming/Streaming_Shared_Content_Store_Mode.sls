# windows:SUPPORTED_Windows7
#
# Specifies that streamed package contents will be not be saved to the local hard disk.
Shared Content Store (SCS) mode:
  lgpo.set:
  - name: Streaming_Shared_Content_Store_Mode
  - setting: Enabled
  - policy_class: Machine
