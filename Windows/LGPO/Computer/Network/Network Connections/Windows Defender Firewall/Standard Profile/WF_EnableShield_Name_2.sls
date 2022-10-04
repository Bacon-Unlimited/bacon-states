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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_EnableShield_Name_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Specifies that Windows Defender Firewall blocks all unsolicited incoming messages. This policy setting overrides all other Windows Defender Firewall policy settings that allow such messages.
# 
# If you enable this policy setting, in the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is selected and administrators cannot clear it. You should also enable the "Windows Defender Firewall: Protect all network connections" policy setting; otherwise, administrators who log on locally can work around the "Windows Defender Firewall: Do not allow exceptions" policy setting by turning off the firewall.
# 
# If you disable this policy setting, Windows Defender Firewall applies other policy settings that allow unsolicited incoming messages. In the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is cleared and administrators cannot select it.
# 
# If you do not configure this policy setting, Windows Defender Firewall applies other policy settings that allow unsolicited incoming messages. In the Windows Defender Firewall component of Control Panel, the "Block all incoming connections" check box is cleared by default, but administrators can change it.
'Windows Defender Firewall: Do not allow exceptions':
  lgpo.set:
  - name: WF_EnableShield_Name_2
  - setting: Enabled
  - policy_class: Machine
