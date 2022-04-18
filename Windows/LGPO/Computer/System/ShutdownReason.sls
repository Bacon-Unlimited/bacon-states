# windows:SUPPORTED_WindowsXP
#
# The Shutdown Event Tracker can be displayed when you shut down a workstation or server.  This is an extra set of questions that is displayed when you invoke a shutdown to collect information related to why you are shutting down the computer.
# 
# If you enable this setting and choose "Always" from the drop-down menu list, the Shutdown Event Tracker is displayed when the computer shuts down.
# 
# If you enable this policy setting and choose "Server Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running Windows Server. (See "Supported on" for supported versions.)
# 
# If you enable this policy setting and choose "Workstation Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running a client version of Windows. (See "Supported on" for supported versions.)
# 
# If you disable this policy setting, the Shutdown Event Tracker is not displayed when you shut down the computer.
# 
# If you do not configure this policy setting, the default behavior for the Shutdown Event Tracker occurs.
# 
# Note: By default, the Shutdown Event Tracker is only displayed on computers running Windows Server.
Display Shutdown Event Tracker:
  lgpo.set:
  - name: ShutdownReason
  - setting:
      ShutdownReason_Box: enum-placeholder
  - policy_class: Machine
