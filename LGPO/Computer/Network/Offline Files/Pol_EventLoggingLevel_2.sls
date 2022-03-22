# windows:SUPPORTED_WindowsPreVista
#
# Determines which events the Offline Files feature records in the event log.
# 
# Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.
# 
# To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.
# 
# "0" records an error when the offline storage cache is corrupted.
# 
# "1" also records an event when the server hosting the offline file is disconnected from the network.
# 
# "2" also records events when the local computer is connected and disconnected from the network.
# 
# "3" also records an event when the server hosting the offline file is reconnected to the network.
# 
# Note: This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Event logging level:
  lgpo.set:
  - name: Pol_EventLoggingLevel_2
  - setting:
      Lbl_EventLoggingLevelSpin: decimal-placeholder
  - policy_class: Machine
