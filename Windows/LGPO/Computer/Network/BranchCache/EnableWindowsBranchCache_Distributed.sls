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
# LOCATION: \Computer\Network\BranchCache\EnableWindowsBranchCache_Distributed.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Windows7OrBITS4
#
# This policy setting specifies whether BranchCache distributed cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.
# 
# In distributed cache mode, client computers download content from BranchCache-enabled main office content servers, cache the content locally, and serve the content to other BranchCache distributed cache mode clients in the branch office.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
# 
# - Enabled. With this selection, BranchCache distributed cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache distributed cache mode is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache distributed cache mode is turned off for all client computers where the policy is applied.
# 
# * This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
#             
Set BranchCache Distributed Cache mode:
  lgpo.set:
  - name: EnableWindowsBranchCache_Distributed
  - setting: Enabled
  - policy_class: Machine
