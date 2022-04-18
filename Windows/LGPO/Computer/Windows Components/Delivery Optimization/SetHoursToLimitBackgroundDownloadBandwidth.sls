# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
Set Business Hours to Limit Background Download Bandwidth:
  lgpo.set:
  - name: SetHoursToLimitBackgroundDownloadBandwidth
  - setting:
      SetHoursToLimitBackgroundDownloadBandwidthFrom: enum-placeholder
      SetHoursToLimitBackgroundDownloadBandwidthIn: decimal-placeholder
      SetHoursToLimitBackgroundDownloadBandwidthOut: decimal-placeholder
      SetHoursToLimitBackgroundDownloadBandwidthTo: enum-placeholder
  - policy_class: Machine
