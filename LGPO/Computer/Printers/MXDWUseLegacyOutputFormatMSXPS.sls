# windows:SUPPORTED_Windows8
#
# Microsoft XPS Document Writer (MXDW) generates OpenXPS (*.oxps) files by default in Windows 10, Windows 10 and Windows Server 2019.
# 
#           If you enable this group policy setting, the default MXDW output format is the legacy Microsoft XPS (*.xps).
# 
#           If you disable or do not configure this policy setting, the default MXDW output format is OpenXPS (*.oxps).
Change Microsoft XPS Document Writer (MXDW) default output format to the legacy Microsoft XPS format (*.xps):
  lgpo.set:
  - name: MXDWUseLegacyOutputFormatMSXPS
  - setting: Enabled
  - policy_class: Machine
