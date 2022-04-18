# windows:SUPPORTED_WindowsXPSP2
#
# Allows Windows Defender Firewall to record information about the unsolicited incoming messages that it receives.
# 
# If you enable this policy setting, Windows Defender Firewall writes the information to a log file. You must provide the name, location, and maximum size of the log file. The location can contain environment variables. You must also specify whether to record information about incoming messages that the firewall blocks (drops) and information about successful incoming and outgoing connections. Windows Defender Firewall does not provide an option to log successful incoming messages.
# 
# If you are configuring the log file name, ensure that the Windows Defender Firewall service account has write permissions to the folder containing the log file. Default path for the log file is %systemroot%\system32\LogFiles\Firewall\pfirewall.log.
# 
# If you disable this policy setting, Windows Defender Firewall does not record information in the log file. If you enable this policy setting, and Windows Defender Firewall creates the log file and adds information, then upon disabling this policy setting, Windows Defender Firewall leaves the log file intact.
# 
# If you do not configure this policy setting, Windows Defender Firewall behaves as if the policy setting were disabled.
# 
# 
'Windows Defender Firewall: Allow logging':
  lgpo.set:
  - name: WF_Logging_Name_2
  - setting:
      WF_Logging_LogDroppedPackets: boolean-placeholder
      WF_Logging_LogFilePathAndName: text-placeholder
      WF_Logging_LogSuccessfulConnections: boolean-placeholder
      WF_Logging_SizeLimit: decimal-placeholder
  - policy_class: Machine
