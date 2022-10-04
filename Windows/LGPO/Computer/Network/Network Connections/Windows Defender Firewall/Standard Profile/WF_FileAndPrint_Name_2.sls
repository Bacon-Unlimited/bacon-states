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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_FileAndPrint_Name_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows inbound file and printer sharing. To do this, Windows Defender Firewall opens UDP ports 137 and 138, and TCP ports 139 and 445.
# 
# If you enable this policy setting, Windows Defender Firewall opens these ports so that this computer can receive print jobs and requests for access to shared files. You must specify the IP addresses or subnets from which these incoming messages are allowed. In the Windows Defender Firewall component of Control Panel, the "File and Printer Sharing" check box is selected and administrators cannot clear it.
# 
# If you disable this policy setting, Windows Defender Firewall blocks these ports, which prevents this computer from sharing files and printers. If an administrator attempts to open any of these ports by adding them to a local port exceptions list, Windows Defender Firewall does not open the port. In the Windows Defender Firewall component of Control Panel, the "File and Printer Sharing" check box is cleared and administrators cannot select it.
# 
# If you do not configure this policy setting, Windows Defender Firewall does not open these ports. Therefore, the computer cannot share files or printers unless an administrator uses other policy settings to open the required ports. In the Windows Defender Firewall component of Control Panel, the "File and Printer Sharing" check box is cleared. Administrators can change this check box.
# 
# Note: If any policy setting opens TCP port 445, Windows Defender Firewall allows inbound ICMP echo requests (the message sent by the Ping utility), even if the "Windows Defender Firewall: Allow ICMP exceptions" policy setting would block them. Policy settings that can open TCP port 445 include "Windows Defender Firewall: Allow inbound file and printer sharing exception," "Windows Defender Firewall: Allow inbound remote administration exception," and "Windows Defender Firewall: Define inbound port exceptions."
'Windows Defender Firewall: Allow inbound file and printer sharing exception':
  lgpo.set:
  - name: WF_FileAndPrint_Name_2
  - setting:
      WF_Scope_Name: text-placeholder
  - policy_class: Machine
