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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_OpenPorts_Name_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows you to view and change the inbound port exceptions list defined by Group Policy. Windows Defender Firewall uses two port exception lists: one is defined by Group Policy settings and the other is defined by the Windows Defender Firewall component in Control Panel.
# 
# If you enable this policy setting, you can view and change the inbound port exceptions list defined by Group Policy. To view this port exceptions list, enable the policy setting and then click the Show button. To add a port, enable the policy setting, note the syntax, click the Show button. In the Show Contents dialog box type a definition string that uses the syntax format. To remove a port, click its definition, and then press the DELETE key. To edit a definition, remove the current definition from the list and add a new one with different parameters. To allow administrators to add ports to the local port exceptions list that is defined by the Windows Defender Firewall component in Control Panel, also enable the "Windows Defender Firewall: Allow local port exceptions" policy setting.
# 
# If you disable this policy setting, the port exceptions list defined by Group Policy is deleted, but other policy settings can continue to open or block ports. Also, if a local port exceptions list exists, it is ignored unless you enable the "Windows Defender Firewall: Allow local port exceptions" policy setting.
# 
# If you do not configure this policy setting, Windows Defender Firewall uses only the local port exceptions list that administrators define by using the Windows Defender Firewall component in Control Panel. Other policy settings can continue to open or block ports.
# 
# Note: If you type an invalid definition string, Windows Defender Firewall adds it to the list without checking for errors, and therefore you can accidentally create multiple entries for the same port with conflicting Scope or Status values. Scope parameters are combined for multiple entries. If entries have different Status values, any definition with the Status set to "disabled" overrides all definitions with the Status set to "enabled," and the port does not receive messages. Therefore, if you set the Status of a port to "disabled," you can prevent administrators from using the Windows Defender Firewall component in Control Panel to enable the port.
# 
# Note: The only effect of setting the Status value to "disabled" is that Windows Defender Firewall ignores other definitions for that port that set the Status to "enabled." If another policy setting opens a port, or if a program in the program exceptions list asks Windows Defender Firewall to open a port, Windows Defender Firewall opens the port.
# 
# Note: If any policy setting opens TCP port 445, Windows Defender Firewall allows inbound ICMP echo request messages (the message sent by the Ping utility), even if the "Windows Defender Firewall: Allow ICMP exceptions" policy setting would block them. Policy settings that can open TCP port 445 include "Windows Defender Firewall: Allow inbound file and printer sharing exception," "Windows Defender Firewall: Allow inbound remote administration exception," and "Windows Defender Firewall: Define inbound port exceptions."
'Windows Defender Firewall: Define inbound port exceptions':
  lgpo.set:
  - name: WF_OpenPorts_Name_2
  - setting:
      WF_OpenPorts_Show:
      - placeholder1
      - placeholder2
  - policy_class: Machine
