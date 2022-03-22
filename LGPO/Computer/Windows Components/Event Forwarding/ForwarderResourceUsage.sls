# windows:SUPPORTED_WindowsVista
#
# This policy setting controls resource usage for the forwarder (source computer) by controlling the events/per second sent to the Event Collector.
# 
# If you enable this policy setting, you can control the volume of events sent to the Event Collector by the source computer. This may be required in high volume environments.
# 
# If you disable or do not configure this policy setting, forwarder resource usage is not specified.
# 
# This setting applies across all subscriptions for the forwarder (source computer).
Configure forwarder resource usage:
  lgpo.set:
  - name: ForwarderResourceUsage
  - setting:
      MaxForwardingRate: decimal-placeholder
  - policy_class: Machine
