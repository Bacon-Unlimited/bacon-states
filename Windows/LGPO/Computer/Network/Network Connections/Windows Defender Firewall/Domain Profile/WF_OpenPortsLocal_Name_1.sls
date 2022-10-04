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
# LOCATION: \Computer\Network\Network Connections\Windows Defender Firewall\Domain Profile\WF_OpenPortsLocal_Name_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# Allows administrators to use the Windows Defender Firewall component in Control Panel to define a local port exceptions list. Windows Defender Firewall uses two port exceptions lists; the other is defined by the "Windows Defender Firewall: Define inbound port exceptions" policy setting.
# 
# If you enable this policy setting, the Windows Defender Firewall component in Control Panel allows administrators to define a local port exceptions list.
# 
# If you disable this policy setting, the Windows Defender Firewall component in Control Panel does not allow administrators to define a local port exceptions list.  However, local administrators will still be allowed to create firewall rules in the Windows Defender Firewall with Advanced Security snap-in.  If you wish to prevent all locally created rules from applying, use the Group Policy Object Editor snap-in and configure Computer Configuration\Windows Settings\Security Settings\Windows Defender Firewall with Advanced Security to specify that local firewall rules should not apply.
'Windows Defender Firewall: Allow local port exceptions':
  lgpo.set:
  - name: WF_OpenPortsLocal_Name_1
  - setting: Enabled
  - policy_class: Machine
