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
# LOCATION: \User\Windows Components\Work Folders\Pol_UserEnableWorkFolders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies the Work Folders server for affected users, as well as whether or not users are allowed to change settings when setting up Work Folders on a domain-joined computer.
# 
# If you enable this policy setting, affected users receive Work Folders settings when they sign in to a domain-joined PC. If this policy setting is disabled or not configured, no Work Folders settings are specified for the affected users, though users can manually set up Work Folders by using the Work Folders Control Panel item.
# 
# The "Work Folders URL" can specify either the URL used by the organization for Work Folders discovery, or the specific URL of the file server that stores the affected users' data.
# 
# The "Work Folders Local Path" specifies the local folder used on the client machine to sync files. This path may contain environment variables. Note: In order for this configuration to take effect, a valid 'Work Folders URL' must also be specified.
#   
# The On-demand file access preference option controls whether to enable on-demand file access. When enabled, the user controls which files in Work Folders are available offline on a given PC. The rest of the files in Work Folders are always visible and dont take up any space on the PC, but the user must be connected to the Internet to access them.
# 
# If you enable this policy setting, on-demand file access is enabled.
# If you disable this policy setting, on-demand file access is disabled, and enough storage space to store all the users files is required on each of their PCs.
# If you specify User choice or do not configure this policy setting, the user decides whether to enable on-demand file access. However, if the Force automatic setup policy setting is enabled, Work Folders is set up automatically with on-demand file access enabled.
# 
# The "Force automatic setup" option specifies that Work Folders should be set up automatically without prompting users. This prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. By default, Work Folders is stored in the "%USERPROFILE%\Work Folders" folder. If this option is not specified, users must use the Work Folders Control Panel item on their computers to set up Work Folders.
#       
Specify Work Folders settings:
  lgpo.set:
  - name: Pol_UserEnableWorkFolders
  - setting:
      Lbl_AutoProvision_Chk: boolean-placeholder
      Lbl_GhostingPreference_Enum: enum-placeholder
      Lbl_LocalFolderPath_Edit: text-placeholder
      Lbl_ServerURL_Edit: text-placeholder
  - policy_class: User
