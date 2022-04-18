# windows:SUPPORTED_Windows8
#
# Changes behavior of Microsoft bus drivers to work with specific devices.
Device compatibility settings:
  lgpo.set:
  - name: DeviceFlags
  - setting: Enabled
  - policy_class: Machine
