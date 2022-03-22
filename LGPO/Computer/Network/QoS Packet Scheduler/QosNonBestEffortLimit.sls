# windows:SUPPORTED_WindowsXP
#
# Determines the percentage of connection bandwidth that the system can reserve. This value limits the combined bandwidth reservations of all programs running on the system.
# 
# By default, the Packet Scheduler limits the system to 80 percent of the bandwidth of a connection, but you can use this setting to override the default.
# 
# If you enable this setting, you can use the "Bandwidth limit" box to adjust the amount of bandwidth the system can reserve.
# 
# If you disable this setting or do not configure it, the system uses the default value of 80 percent of the connection.
# 
# Important: If a bandwidth limit is set for a particular network adapter in the registry, this setting is ignored when configuring that network adapter.
Limit reservable bandwidth:
  lgpo.set:
  - name: QosNonBestEffortLimit
  - setting:
      QosNonBestEffortLimit_Box: decimal-placeholder
  - policy_class: Machine
