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
# LOCATION: \Computer\Network\Network Isolation\WF_NetIsolation_PrivateSubnet.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 				
# A comma-separated list of IP address ranges that are in your corporate network.
# 
# If you enable this policy setting, it ensures that  apps with the Home/Work Networking capability have appropriate access to your corporate network. These addresses are only accessible to  apps if and only if the app has declared the Home/Work Networking capability.
# 
# Windows Network Isolation attempts to automatically discover private network hosts. By default, the addresses configured with this policy setting are merged with the hosts that are declared as private through automatic discovery.
# 
# To ensure that these addresses are the only addresses ever classified as private, enable the "Subnet definitions are authoritative" policy setting.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to automatically discover your private network hosts.
# 
# Example: 3efe:1092::/96,18.1.1.1/10 
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Private network ranges for  apps:
  lgpo.set:
  - name: WF_NetIsolation_PrivateSubnet
  - setting:
      WF_NetIsolation_PrivateSubnetBox: text-placeholder
  - policy_class: Machine
