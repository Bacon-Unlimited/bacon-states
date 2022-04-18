# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the interval at which the relay name is resolved. The 6to4 relay name resolution interval setting has no effect if 6to4 connectivity is not available on the host.
# 
# If you enable this policy setting, you can specify the value for the duration at which the relay name is resolved periodically.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# 
Set 6to4 Relay Name Resolution Interval:
  lgpo.set:
  - name: 6to4_Router_Name_Resolution_Interval
  - setting:
      RouterNameResolutionIntervalBox: decimal-placeholder
  - policy_class: Machine
