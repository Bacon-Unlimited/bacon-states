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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_IcmpSettings_Name_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Defines the set of Internet Control Message Protocol (ICMP) message types that Windows Defender Firewall allows. Utilities can use ICMP messages to determine the status of other computers. For example, Ping uses the echo request message. If you do not enable the "Allow inbound echo request" message type, Windows Defender Firewall blocks echo request messages sent by Ping running on other computers, but it does not block outbound echo request messages sent by Ping running on this computer.
# 
# If you enable this policy setting, you must specify which ICMP message types Windows Defender Firewall allows this computer to send or receive.
# 
# If you disable this policy setting, Windows Defender Firewall blocks all the listed incoming and outgoing ICMP message types. As a result, utilities that use the blocked ICMP messages will not be able to send those messages to or from this computer. If you enable this policy setting and allow certain message types, then later disable this policy setting, Windows Defender Firewall deletes the list of message types that you had enabled.
# 
# If you do not configure this policy setting, Windows Defender Firewall behaves as if you had disabled it.
# 
# Note: If any policy setting opens TCP port 445, Windows Defender Firewall allows inbound echo requests, even if the "Windows Defender Firewall: Allow ICMP exceptions" policy setting would block them. Policy settings that can open TCP port 445 include "Windows Defender Firewall: Allow file and printer sharing exception," "Windows Defender Firewall: Allow remote administration exception," and "Windows Defender Firewall: Define inbound port exceptions."
# 
# Note: Other Windows Defender Firewall policy settings affect only incoming messages, but several of the options of the "Windows Defender Firewall: Allow ICMP exceptions" policy setting affect outgoing communication.
'Windows Defender Firewall: Allow ICMP exceptions':
  lgpo.set:
  - name: WF_IcmpSettings_Name_2
  - setting:
      WF_IcmpSettings_AllowInboundEchoRequest: boolean-placeholder
      WF_IcmpSettings_AllowInboundMaskRequest: boolean-placeholder
      WF_IcmpSettings_AllowInboundRouterRequest: boolean-placeholder
      WF_IcmpSettings_AllowInboundTimestampRequest: boolean-placeholder
      WF_IcmpSettings_AllowOutboundDestinationUnreachable: boolean-placeholder
      WF_IcmpSettings_AllowOutboundPacketTooBig: boolean-placeholder
      WF_IcmpSettings_AllowOutboundParameterProblem: boolean-placeholder
      WF_IcmpSettings_AllowOutboundSourceQuench: boolean-placeholder
      WF_IcmpSettings_AllowOutboundTimeExceeded: boolean-placeholder
      WF_IcmpSettings_AllowRedirect: boolean-placeholder
  - policy_class: Machine
