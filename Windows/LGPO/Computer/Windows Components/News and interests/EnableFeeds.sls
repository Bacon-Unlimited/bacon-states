# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether news and interests is allowed on the device.
Enable news and interests on the taskbar:
  lgpo.set:
  - name: EnableFeeds
  - setting: Enabled
  - policy_class: Machine
