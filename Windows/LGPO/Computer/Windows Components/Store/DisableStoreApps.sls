# windows:SUPPORTED_Windows_10_0
#
# Disableturns off the launch of all apps from the Microsoft Store that came pre-installed or were downloaded. Apps will not be updated. Your Store will also be disabled.Enableturns all of it back on. This setting applies only to Enterprise and Education editions of Windows.
'Disable all apps from Microsoft Store ':
  lgpo.set:
  - name: DisableStoreApps
  - setting: Enabled
  - policy_class: Machine
