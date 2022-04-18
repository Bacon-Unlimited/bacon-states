# windows:SUPPORTED_Windows_10_0
#
# If you enable this setting, users will not be able to push Apps to this device from the Microsoft Store running on other devices or the web.
Turn off Push To Install service:
  lgpo.set:
  - name: DisablePushToInstall
  - setting: Enabled
  - policy_class: Machine
