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
# LOCATION: \Computer\Network\Lanman Server\Pol_HashPublication.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies whether a hash generation service generates hashes, also called content information, for data that is stored in shared folders. This policy setting must be applied to server computers that have the File Services role and both the File Server and the BranchCache for Network Files role services installed.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, hash publication settings are not applied to file servers. In the circumstance where file servers are domain members but you do not want to enable BranchCache on all file servers, you can specify Not Configured for this domain Group Policy setting, and then configure local machine policy to enable BranchCache on individual file servers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual servers where you want to enable BranchCache.
# 
# - Enabled. With this selection, hash publication is turned on for all file servers where Group Policy is applied. For example, if Hash Publication for BranchCache is enabled in domain Group Policy, hash publication is turned on for all domain member file servers to which the policy is applied. The file servers are then able to create content information for all content that is stored in BranchCache-enabled file shares.
# 
# - Disabled. With this selection, hash publication is turned off for all file servers where Group Policy is applied.
# 
# In circumstances where this policy setting is enabled, you can also select the following configuration options:
# 
# - Allow hash publication for all shared folders. With this option, BranchCache generates content information for all content in all shares on the file server. 
# 
# - Allow hash publication only for shared folders on which BranchCache is enabled. With this option, content information is generated only for shared folders on which BranchCache is enabled. If you use this setting, you must enable BranchCache for individual shares in Share and Storage Management on the file server.
# 
# - Disallow hash publication on all shared folders. With this option, BranchCache does not generate content information for any shares on the computer and does not send content information to client computers that request content.
#       
Hash Publication for BranchCache:
  lgpo.set:
  - name: Pol_HashPublication
  - setting:
      Lbl_HashPublicationActionCombo: enum-placeholder
  - policy_class: Machine
