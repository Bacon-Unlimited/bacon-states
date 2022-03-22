# windows:SUPPORTED_Windows_10_0
#
# Specifies the minimum download QoS (Quality of Service or speed) for background downloads in KiloBytes/second.
# 
# This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from HTTP source to achieve the specified minimum QoS value.
Minimum Background QoS (in KB/s):
  lgpo.set:
  - name: MinBackgroundQos
  - setting:
      MinBackgroundQos: decimal-placeholder
  - policy_class: Machine
