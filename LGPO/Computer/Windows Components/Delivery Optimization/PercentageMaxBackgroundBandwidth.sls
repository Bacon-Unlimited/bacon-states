# windows:SUPPORTED_Windows_10_0
#
# Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.
# 
# The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for background downloads.
Maximum Background Download Bandwidth (percentage):
  lgpo.set:
  - name: PercentageMaxBackgroundBandwidth
  - setting:
      PercentageMaxBackgroundBandwidth: decimal-placeholder
  - policy_class: Machine
