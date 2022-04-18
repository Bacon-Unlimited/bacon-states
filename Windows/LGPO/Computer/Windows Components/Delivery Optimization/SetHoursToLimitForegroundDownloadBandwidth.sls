# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
Set Business Hours to Limit Foreground Download Bandwidth:
  lgpo.set:
  - name: SetHoursToLimitForegroundDownloadBandwidth
  - setting:
      SetHoursToLimitForegroundDownloadBandwidthFrom: enum-placeholder
      SetHoursToLimitForegroundDownloadBandwidthIn: decimal-placeholder
      SetHoursToLimitForegroundDownloadBandwidthOut: decimal-placeholder
      SetHoursToLimitForegroundDownloadBandwidthTo: enum-placeholder
  - policy_class: Machine
