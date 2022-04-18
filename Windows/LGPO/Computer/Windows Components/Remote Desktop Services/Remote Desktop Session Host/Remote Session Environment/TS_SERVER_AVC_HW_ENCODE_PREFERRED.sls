# windows:SUPPORTED_Windows_10_0
#
# This policy setting lets you enable H.264/AVC hardware encoding support for Remote Desktop Connections. When you enable hardware encoding, if an error occurs, we will attempt to use software encoding. If you disable or do not configure this policy, we will always use software encoding.
Configure H.264/AVC hardware encoding for Remote Desktop Connections:
  lgpo.set:
  - name: TS_SERVER_AVC_HW_ENCODE_PREFERRED
  - setting: Enabled
  - policy_class: Machine
