# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum foreground download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.
# 
# The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.
#       
Maximum Foreground Download Bandwidth (in KB/s):
  lgpo.set:
  - name: MaxForegroundDownloadBandwidth
  - setting:
      MaxForegroundDownloadBandwidth: decimal-placeholder
  - policy_class: Machine
