# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scanning for packed executables. It is recommended that this type of scanning remain enabled.
# 
#     If you enable or do not configure this setting, packed executables will  be scanned.
# 
#     If you disable this setting, packed executables will not be scanned.
Scan packed executables:
  lgpo.set:
  - name: Scan_DisablePackedExeScanning
  - setting: Enabled
  - policy_class: Machine
