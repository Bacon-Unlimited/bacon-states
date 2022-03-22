# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to set when Windows File Protection scans protected files. This policy setting directs Windows File Protection to enumerate and scan all system files for changes.
# 
# If you enable this policy setting, select a rate from the "Scanning Frequency" box. You can use this setting to direct Windows File Protection to scan files more often.
# 
# --  "Do not scan during startup," the default, scans files only during setup.
# 
# --  "Scan during startup" also scans files each time you start Windows XP. This setting delays each startup.
# 
# If you disable or do not configure this policy setting, by default, files are scanned only during setup.
# 
# Note: This policy setting affects file scanning only. It does not affect the standard background file change detection that Windows File Protection provides.
Set Windows File Protection scanning:
  lgpo.set:
  - name: WFPScan
  - setting:
      WFPScanList: enum-placeholder
  - policy_class: Machine
