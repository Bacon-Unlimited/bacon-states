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
# LOCATION: \Computer\Network\Lanman Workstation\Pol_EnableHandleCachingForCAFiles.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines the behavior of SMB handle caching for clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.
# 
#         If you enable this policy setting, the SMB client will allow cached handles to files on CA shares. This may lead to better performance when repeatedly accessing a large number of unstructured data files on CA shares running in Microsoft Azure Files.
# 
#         If you disable or do not configure this policy setting, Windows will prevent use of cached handles to files opened through CA shares.
# 
#         Note: This policy has no effect when connecting Scale-out File Server shares provided by a Windows Server. Microsoft does not recommend enabling this policy for clients that routinely connect to files hosted on a Windows Failover Cluster with the File Server for General Use role, as it can lead to adverse failover times and increased memory and CPU usage.
#       
Handle Caching on Continuous Availability Shares:
  lgpo.set:
  - name: Pol_EnableHandleCachingForCAFiles
  - setting: Enabled
  - policy_class: Machine
