# windows:SUPPORTED_Windows8
#
# Changes behavior of 3rd-party drivers to work around incompatibilities introduced between OS versions.
Driver compatibility settings:
  lgpo.set:
  - name: DriverShims
  - setting: Enabled
  - policy_class: Machine
