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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Domain Profile\WF_AllowedPrograms_Name_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows you to view and change the program exceptions list defined by Group Policy. Windows Defender Firewall uses two program exception lists: one is defined by Group Policy settings and the other is defined by the Windows Defender Firewall component in Control Panel.
# 
# If you enable this policy setting, you can view and change the program exceptions list defined by Group Policy. If you add a program to this list and set its status to Enabled, that program can receive unsolicited incoming messages on any port that it asks Windows Defender Firewall to open, even if that port is blocked by another policy setting, such as the "Windows Defender Firewall: Define inbound port exceptions" policy setting. To view the program list, enable the policy setting and then click the Show button. To add a program, enable the policy setting, note the syntax, click the Show button. In the Show Contents dialog box type a definition string that uses the syntax format. To remove a program, click its definition, and then press the DELETE key. To edit a definition, remove the current definition from the list and add a new one with different parameters. To allow administrators to add programs to the local program exceptions list that is defined by the Windows Defender Firewall component in Control Panel, also enable the "Windows Defender Firewall: Allow local program exceptions" policy setting.
# 
# If you disable this policy setting, the program exceptions list defined by Group Policy is deleted. If a local program exceptions list exists, it is ignored unless you enable the "Windows Defender Firewall: Allow local program exceptions" policy setting.
# 
# If you do not configure this policy setting, Windows Defender Firewall uses only the local program exceptions list that administrators define by using the Windows Defender Firewall component in Control Panel.
# 
# Note: If you type an invalid definition string, Windows Defender Firewall adds it to the list without checking for errors. This allows you to add programs that you have not installed yet, but be aware that you can accidentally create multiple entries for the same program with conflicting Scope or Status values. Scope parameters are combined for multiple entries.
# 
# Note: If you set the Status parameter of a definition string to "disabled," Windows Defender Firewall ignores port requests made by that program and ignores other definitions that set the Status of that program to "enabled." Therefore, if you set the Status to "disabled," you prevent administrators from allowing the program to ask Windows Defender Firewall to open additional ports. However, even if the Status is "disabled," the program can still receive unsolicited incoming messages through a port if another policy setting opens that port.
# 
# Note: Windows Defender Firewall opens ports for the program only when the program is running and "listening" for incoming messages. If the program is not running, or is running but not listening for those messages, Windows Defender Firewall does not open its ports.
'Windows Defender Firewall: Define inbound program exceptions':
  lgpo.set:
  - name: WF_AllowedPrograms_Name_1
  - setting:
      WF_AllowedPrograms_Show:
      - placeholder1
      - placeholder2
  - policy_class: Machine
