# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting determines whether enhanced anti-spoofing is required for Windows Hello face authentication.
# 
# If you enable this setting, Windows requires all users on managed devices to use enhanced anti-spoofing for Windows Hello face authentication. This disables Windows Hello face authentication on devices that do not support enhanced anti-spoofing.
# 
# If you disable or don't configure this setting, Windows doesn't require enhanced anti-spoofing for Windows Hello face authentication.
# 
# Note that enhanced anti-spoofing for Windows Hello face authentication is not required on unmanaged devices.
# 
Configure enhanced anti-spoofing:
  lgpo.set:
  - name: Face_EnhancedAntiSpoofing
  - setting: Enabled
  - policy_class: Machine
