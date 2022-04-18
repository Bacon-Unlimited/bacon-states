# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the maximum percentage CPU utilization permitted during a scan. Valid values for this setting are a percentage represented by the integers 5 to 100. A value of 0 indicates that there should be no throttling of CPU utilization. The default value is 50.
# 
#     If you enable this setting, CPU utilization will not exceed the percentage specified.
# 
#     If you disable or do not configure this setting, CPU utilization will not exceed the default value.
Specify the maximum percentage of CPU utilization during a scan:
  lgpo.set:
  - name: Scan_AvgCPULoadFactor
  - setting:
      Scan_AvgCPULoadFactor: decimal-placeholder
  - policy_class: Machine
