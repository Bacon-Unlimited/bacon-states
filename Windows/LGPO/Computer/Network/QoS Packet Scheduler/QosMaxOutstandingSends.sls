# windows:SUPPORTED_WindowsXP
#
# Specifies the maximum number of outstanding packets permitted on the system. When the number of outstanding packets reaches this limit, the Packet Scheduler postpones all submissions to network adapters until the number falls below this limit.
# 
# "Outstanding packets" are packets that the Packet Scheduler has submitted to a network adapter for transmission, but which have not yet been sent.
# 
# If you enable this setting, you can limit the number of outstanding packets.
# 
# If you disable this setting or do not configure it, then the setting has no effect on the system.
# 
# Important: If the maximum number of outstanding packets is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
Limit outstanding packets:
  lgpo.set:
  - name: QosMaxOutstandingSends
  - setting:
      QosMaxOutstandingSends_Box: decimal-placeholder
  - policy_class: Machine
