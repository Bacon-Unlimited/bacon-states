# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed.  Usually these scheduled scans are missed because the computer was turned off at the scheduled time. 
# 
#     If you enable this setting, catch-up scans for scheduled full scans will be turned on.  If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer.  If there is no scheduled scan configured, there will be no catch-up scan run. 
# 
#     If you disable or do not configure this setting, catch-up scans for scheduled full scans will be turned off.
Turn on catch-up full scan:
  lgpo.set:
  - name: Scan_DisableCatchupFullScan
  - setting: Enabled
  - policy_class: Machine
