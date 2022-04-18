# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Best Effort service type (ServiceTypeBestEffort). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.
# 
# This setting applies only to packets that do not conform to the flow specification.
# 
# If you enable this setting, you can change the default DSCP value associated with the Best Effort service type.
# 
# If you disable this setting, the system uses the default DSCP value of 0.
# 
# Important: If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Best effort service type:
  lgpo.set:
  - name: QosServiceTypeBestEffort_NC
  - setting:
      QosDSCPValue: decimal-placeholder
  - policy_class: Machine
