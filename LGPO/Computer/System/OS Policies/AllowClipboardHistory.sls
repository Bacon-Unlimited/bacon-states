# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether history of Clipboard contents can be stored in memory.
#             If you enable this policy setting, history of Clipboard contents are allowed to be stored.
#             If you disable this policy setting, history of Clipboard contents are not allowed to be stored.
#             Policy change takes effect immediately.
#       
Allow Clipboard History:
  lgpo.set:
  - name: AllowClipboardHistory
  - setting: Enabled
  - policy_class: Machine
