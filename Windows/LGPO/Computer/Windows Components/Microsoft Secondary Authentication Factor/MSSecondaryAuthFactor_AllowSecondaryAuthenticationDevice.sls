# windows:SUPPORTED_Windows_10_0
#
# This policy allows users to use a companion device, such as a phone, fitness band, or IoT device, to sign on to a desktop computer running Windows 10. The companion device provides a second factor of authentication with Windows Hello.
# 
# If you enable or do not configure this policy setting, users can authenticate to Windows Hello using a companion device.
# 
# If you disable this policy, users cannot use a companion device to authenticate with Windows Hello.
Allow companion device for secondary authentication:
  lgpo.set:
  - name: MSSecondaryAuthFactor_AllowSecondaryAuthenticationDevice
  - setting: Enabled
  - policy_class: Machine
