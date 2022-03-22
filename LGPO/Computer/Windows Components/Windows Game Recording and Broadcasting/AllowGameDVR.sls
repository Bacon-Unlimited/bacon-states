# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows Game Recording and Broadcasting.
# 
# This setting enables or disables the Windows Game Recording and Broadcasting features. If you disable this setting, Windows Game Recording will not be allowed.
# If the setting is enabled or not configured, then Recording and Broadcasting (streaming) will be allowed.
#  
Enables or disables Windows Game Recording and Broadcasting:
  lgpo.set:
  - name: AllowGameDVR
  - setting: Enabled
  - policy_class: Machine
