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
# LOCATION: \Computer\Network\BranchCache\EnableWindowsBranchCache_HostedCacheDiscovery.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting specifies whether client computers should attempt the automatic configuration of hosted cache mode by searching for hosted cache servers publishing service connection points that are associated with the client's current Active Directory site.  If you enable this policy setting, client computers to which the policy setting is applied search for hosted cache servers using Active Directory, and will prefer both these servers and hosted cache mode rather than manual BranchCache configuration or BranchCache configuration by other group policies.
# 
# If you enable this policy setting in addition to the "Turn on BranchCache" policy setting, BranchCache clients attempt to discover hosted cache servers in the local branch office.  If client computers detect hosted cache servers, hosted cache mode is turned on.  If they do not detect hosted cache servers, hosted cache mode is not turned on, and the client uses any other configuration that is specified manually or by Group Policy.
# 
# When this policy setting is applied, the client computer performs or does not perform automatic hosted cache server discovery under the following circumstances:
# 
# If no other BranchCache mode-based policy settings are applied, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers is found, the client computer self-configures for hosted cache mode.
# 
# If the policy setting "Set BranchCache Distributed Cache Mode" is applied in addition to this policy, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers are found, the client computer self-configures for hosted cache mode only.
# 
# If the policy setting "Set BranchCache Hosted Cache Mode" is applied, the client computer does not perform automatic hosted cache discovery. This is also true in cases where the policy setting "Configure Hosted Cache Servers" is applied.
# 
# This policy setting can only be applied to client computers that are running at least Windows 8.  This policy has no effect on computers that are running Windows 7 or Windows Vista.  
# 
# If you disable, or do not configure this setting, a client will not attempt to discover hosted cache servers by service connection point.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy setting, and client computers do not perform hosted cache server discovery.
# 
# - Enabled. With this selection, the policy setting is applied to client computers, which perform automatic hosted cache server discovery and which are configured as hosted cache mode clients.
# 
# - Disabled. With this selection, this policy is not applied to client computers.
#             
Enable Automatic Hosted Cache Discovery by Service Connection Point:
  lgpo.set:
  - name: EnableWindowsBranchCache_HostedCacheDiscovery
  - setting: Enabled
  - policy_class: Machine
