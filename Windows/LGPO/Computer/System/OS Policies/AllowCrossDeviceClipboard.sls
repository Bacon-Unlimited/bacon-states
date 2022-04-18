# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether Clipboard contents can be synchronized across devices.
#             If you enable this policy setting, Clipboard contents are allowed to be synchronized across devices logged in under the same Microsoft account or Azure AD account.
#             If you disable this policy setting, Clipboard contents cannot be shared to other devices.
#             Policy change takes effect immediately.
#       
Allow Clipboard synchronization across devices:
  lgpo.set:
  - name: AllowCrossDeviceClipboard
  - setting: Enabled
  - policy_class: Machine
