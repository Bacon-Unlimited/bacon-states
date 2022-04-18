# windows:SUPPORTED_WindowsXP
#
# Determines the smallest unit of time that the Packet Scheduler uses when scheduling packets for transmission. The Packet Scheduler cannot schedule packets for transmission more frequently than permitted by the value of this entry.
# 
# If you enable this setting, you can override the default timer resolution established for the system, usually units of 10 microseconds.
# 
# If you disable this setting or do not configure it, the setting has no effect on the system.
# 
# Important: If a timer resolution is specified in the registry for a particular network adapter, then this setting is ignored when configuring that network adapter.
Set timer resolution:
  lgpo.set:
  - name: QosTimerResolution
  - setting:
      QosTimerResolution_Box: decimal-placeholder
  - policy_class: Machine
