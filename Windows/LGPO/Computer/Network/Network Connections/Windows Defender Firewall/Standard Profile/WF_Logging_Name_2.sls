####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_Logging_Name_2.sls
#
# SUPPORTED WINDOWS OS
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
