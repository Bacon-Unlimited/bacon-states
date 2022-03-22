# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum background download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.
# 
# The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.
#       
Maximum Background Download Bandwidth (in KB/s):
  lgpo.set:
  - name: MaxBackgroundDownloadBandwidth
  - setting:
      MaxBackgroundDownloadBandwidth: decimal-placeholder
  - policy_class: Machine
