# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting lets you control the redirection of video capture devices to the remote computer in a Remote Desktop Services session. 
# 
# By default, Remote Desktop Services allows redirection of video capture devices.
# 
# If you enable this policy setting, users cannot redirect their video capture devices to the remote computer. 
# 
# If you disable or do not configure this policy setting, users can redirect their video capture devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the video capture devices to redirect to the remote computer.
# 
# 
Do not allow video capture redirection:
  lgpo.set:
  - name: TS_CAMERA_REDIRECTION
  - setting: Enabled
  - policy_class: Machine
