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
# LOCATION: \Computer\Network\Network Isolation\WF_NetIsolation_Intranet_Proxies.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 	
# A  semicolon-separated list of intranet proxy server IP addresses. These addresses are categorized as private by Windows Network Isolation and are accessible to  apps that have the Home/Work Networking capability.
# 
# If you enable this policy setting, it allows an administrator to configure a set of proxies that provide access to intranet resources.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to discover proxies and configures them as Internet nodes.
#   
# This setting should NOT be used to configure Internet proxies.
# 
# Example: [3efe:3022::1000]; 18.0.0.1; 18.0.0.2
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Intranet proxy servers for  apps:
  lgpo.set:
  - name: WF_NetIsolation_Intranet_Proxies
  - setting:
      WF_NetIsolation_Intranet_ProxiesBox: text-placeholder
  - policy_class: Machine
