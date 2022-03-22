# windows:SUPPORTED_WindowsXP
#
# Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Network Control service type (ServiceTypeNetworkControl). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.
# 
# This setting applies only to packets that conform to the flow specification.
# 
# If you enable this setting, you can change the default DSCP value associated with the Network Control service type.
# 
# If you disable this setting, the system uses the default DSCP value of 48 (0x30).
# 
# Important: If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Network control service type:
  lgpo.set:
  - name: QosServiceTypeNetworkControl_C
  - setting:
      QosDSCPValue: decimal-placeholder
  - policy_class: Machine
