# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify an interval at which to perform a quick scan. The time value is represented as the number of hours between quick scans. Valid values range from 1 (every hour) to 24 (once per day). If set to zero, interval quick scans will not occur. By default, this setting is set to 0.
# 
#     If you enable this setting, a quick scan will run at the interval specified.
# 
#     If you disable or do not configure this setting, a quick scan will run at a default time.
Specify the interval to run quick scans per day:
  lgpo.set:
  - name: Scan_QuickScanInterval
  - setting:
      Scan_QuickScanInterval: decimal-placeholder
  - policy_class: Machine
