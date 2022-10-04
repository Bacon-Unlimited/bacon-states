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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Network Inspection System\Nis_Consumers_IPS_DisableSignatureRetirement.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure definition retirement for network protection against exploits of known vulnerabilities. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system is not vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocal are retired then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection will have no impact on network performance.
# 
#     If you enable or do not configure this setting, definition retirement will be enabled.
# 
#     If you disable this setting, definition retirement will be disabled.
Turn on definition retirement:
  lgpo.set:
  - name: Nis_Consumers_IPS_DisableSignatureRetirement
  - setting: Enabled
  - policy_class: Machine
