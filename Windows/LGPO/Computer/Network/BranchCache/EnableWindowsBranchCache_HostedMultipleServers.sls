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
# LOCATION: \Computer\Network\BranchCache\EnableWindowsBranchCache_HostedMultipleServers.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting specifies whether client computers are configured to use hosted cache mode and provides the computer name of the hosted cache servers that are available to the client computers.  Hosted cache mode enables client computers in branch offices to retrieve content from one or more hosted cache servers that are installed in the same office location.  You can use this setting to automatically configure client computers that are configured for hosted cache mode with the computer names of the hosted cache servers in the branch office.
# 
# If you enable this policy setting and specify valid computer names of hosted cache servers, hosted cache mode is enabled for all client computers to which the policy setting is applied. For this policy setting to take effect, you must also enable the "Turn on BranchCache" policy setting.
# 
# This policy setting can only be applied to client computers that are running at least Windows 8.  This policy has no effect on computers that are running Windows 7 or Windows Vista.  Client computers to which this policy setting is applied, in addition to the "Set BranchCache Hosted Cache mode" policy setting, use the hosted cache servers that are specified in this policy setting and do not use the hosted cache server that is configured in the policy setting "Set BranchCache Hosted Cache Mode."
# 
# If you do not configure this policy setting, or if you disable this policy setting, client computers that are configured with hosted cache mode still function correctly.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy setting.
# 
# - Enabled. With this selection, the policy setting is applied to client computers, which are configured as hosted cache mode clients that use the hosted cache servers that you specify in "Hosted cache servers."
# 
# - Disabled. With this selection, this policy is not applied to client computers.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# - Hosted cache servers. To add hosted cache server computer names to this policy setting, click Enabled, and then click Show. The Show Contents dialog box opens. Click Value, and then type the computer names of the hosted cache servers.
#             
Configure Hosted Cache Servers:
  lgpo.set:
  - name: EnableWindowsBranchCache_HostedMultipleServers
  - setting:
      WBC_MultipleServers_Listbox:
      - placeholder1
      - placeholder2
  - policy_class: Machine
