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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Standard Profile\WF_EnableFirewall_Name_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Turns on Windows Defender Firewall.
# 
# If you enable this policy setting, Windows Defender Firewall runs and ignores the "Computer Configuration\Administrative Templates\Network\Network Connections\Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting.
# 
# If you disable this policy setting, Windows Defender Firewall does not run. This is the only way to ensure that Windows Defender Firewall does not run and administrators who log on locally cannot start it.
# 
# If you do not configure this policy setting, administrators can use the Windows Defender Firewall component in Control Panel to turn Windows Defender Firewall on or off, unless the "Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting overrides.
'Windows Defender Firewall: Protect all network connections':
  lgpo.set:
  - name: WF_EnableFirewall_Name_2
  - setting: Enabled
  - policy_class: Machine
