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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\WF_AuthenticatedBypass_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows unsolicited incoming messages from specified systems that authenticate using the IPsec transport.
# 
# If you enable this policy setting, you must type a security descriptor containing a list of computers or groups of computers. If a computer on that list authenticates using IPsec, Windows Defender Firewall does not block its unsolicited messages. This policy setting overrides other policy settings that would block those messages.
# 
# If you disable or do not configure this policy setting, Windows Defender Firewall makes no exception for messages sent by computers that authenticate using IPsec. If you enable this policy setting and add systems to the list, upon disabling this policy, Windows Defender Firewall deletes the list.
# 
# Note: You define entries in this list by using Security Descriptor Definition Language (SDDL) strings. For more information about the SDDL format, see the Windows Defender Firewall deployment information at the Microsoft Web site (http://go.microsoft.com/fwlink/?LinkId=25131).
'Windows Defender Firewall: Allow authenticated IPsec bypass':
  lgpo.set:
  - name: WF_AuthenticatedBypass_Name
  - setting:
      WF_AuthenticatedBypass_List_Name: text-placeholder
  - policy_class: Machine
