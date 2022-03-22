# windows:SUPPORTED_Windows8
#
# 
#     This policy setting allows you to define the number of consecutive scheduled scans that can be missed after which a catch-up scan will be forced. By default, the value of this setting is 2 consecutive scheduled scans.
# 
#     If you enable this setting, a catch-up scan will occur after the specified number consecutive missed scheduled scans.
# 
#     If you disable or do not configure this setting, a catch-up scan will occur after the 2 consecutive missed scheduled scans.
Define the number of days after which a catch-up scan is forced:
  lgpo.set:
  - name: Scan_MissedScheduledScanCountBeforeCatchup
  - setting:
      Scan_MissedScheduledScanCountBeforeCatchup: decimal-placeholder
  - policy_class: Machine
