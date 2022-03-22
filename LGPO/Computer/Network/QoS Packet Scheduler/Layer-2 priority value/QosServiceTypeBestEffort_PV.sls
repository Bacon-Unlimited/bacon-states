# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate link layer (Layer-2) priority value for packets with the Best Effort service type (ServiceTypeBestEffort). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.
# 
# If you enable this setting, you can change the default priority value associated with the Best Effort service type.
# 
# If you disable this setting, the system uses the default priority value of 0.
# 
# Important: If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Best effort service type:
  lgpo.set:
  - name: QosServiceTypeBestEffort_PV
  - setting:
      QosPriorityValue: decimal-placeholder
  - policy_class: Machine
