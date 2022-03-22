# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure reparse point scanning. If you allow reparse points to be scanned, there is a possible risk of recursion. However, the engine supports following reparse points to a maximum depth so at worst scanning could be slowed. Reparse point scanning is disabled by default and this is the recommended state for this functionality. 
# 
#     If you enable this setting, reparse point scanning will be enabled.
# 
#     If you disable or do not configure this setting, reparse point scanning will be disabled.
Turn on reparse point scanning:
  lgpo.set:
  - name: Scan_DisableReparsePointScanning
  - setting: Enabled
  - policy_class: Machine
