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
# LOCATION: \Computer\Network\BranchCache\SetDataCacheEntryMaxAge.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting specifies the default age in days for which segments are valid in the BranchCache data cache on client computers.
# 
# If you enable this policy setting, you can configure the age for segments in the data cache.
# 
# If you disable or do not configure this policy setting, the age is set to 28 days.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache client computer cache age settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache client computer cache age setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache age settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the client computer cache age setting that you use on individual client computers.
# 
# - Enabled. With this selection, the BranchCache client computer cache age setting is enabled for all client computers where the policy is applied. For example, if this policy setting is enabled in domain Group Policy, the BranchCache client computer cache age that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache client computers use the default client computer cache age setting of 28 days on the client computer.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# - Specify the age in days for which segments in the data cache are valid.
#             
Set age for segments in the data cache:
  lgpo.set:
  - name: SetDataCacheEntryMaxAge
  - setting:
      WBC_Cache_MaxAge_dctxtbox: decimal-placeholder
  - policy_class: Machine
