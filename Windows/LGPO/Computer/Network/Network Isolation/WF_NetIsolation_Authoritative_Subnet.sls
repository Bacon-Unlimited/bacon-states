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
# LOCATION: \Computer\Network\Network Isolation\WF_NetIsolation_Authoritative_Subnet.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 				
# Turns off  Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment.
# 
# If you enable this policy setting, it turns off Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment. Only network hosts within the address ranges configured via Group Policy will be classified as private.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to automatically discover your private network hosts in the domain corporate environment. 
# 				
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Subnet definitions are authoritative:
  lgpo.set:
  - name: WF_NetIsolation_Authoritative_Subnet
  - setting: Enabled
  - policy_class: Machine
