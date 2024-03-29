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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_AvoidFallbackNetbiosDiscovery.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control the domain controller (DC) location algorithm. By default, the DC location algorithm prefers DNS-based discovery if the DNS domain name is known. If DNS-based discovery fails and the NetBIOS domain name is known, the algorithm then uses NetBIOS-based discovery as a fallback mechanism.
# 
# NetBIOS-based discovery uses a WINS server and mailslot messages but does not use site information. Hence it does not ensure that clients will discover the closest DC. It also allows a hub-site client to discover a branch-site DC even if the branch-site DC only registers site-specific DNS records (as recommended). For these reasons, NetBIOS-based discovery is not recommended.
# 
# Note that this policy setting does not affect NetBIOS-based discovery for DC location if only the NetBIOS domain name is known.
# 
# If you enable or do not configure this policy setting, the DC location algorithm does not use NetBIOS-based discovery as a fallback mechanism when DNS-based discovery fails. This is the default behavior.
# 
# If you disable this policy setting, the DC location algorithm can use NetBIOS-based discovery as a fallback mechanism when DNS based discovery fails.
Do not use NetBIOS-based discovery for domain controller location when DNS-based discovery fails:
  lgpo.set:
  - name: Netlogon_AvoidFallbackNetbiosDiscovery
  - setting: Enabled
  - policy_class: Machine
