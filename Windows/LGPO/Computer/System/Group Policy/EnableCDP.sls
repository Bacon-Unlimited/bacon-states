# windows:SUPPORTED_Windows_10_0
#
# 
# This policy setting determines whether the Windows device is allowed to participate in cross-device experiences (continue experiences).
# 
# If you enable this policy setting, the Windows device is discoverable by other Windows devices that belong to the same user, and can participate in cross-device experiences.
# 
# If you disable this policy setting, the Windows device is not discoverable by other devices, and cannot participate in cross-device experiences.
# 
# If you do not configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
#       
Continue experiences on this device:
  lgpo.set:
  - name: EnableCDP
  - setting: Enabled
  - policy_class: Machine
