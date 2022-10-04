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
# LOCATION: \Computer\Windows Components\Work Folders\Pol_MachineEnableWorkFolders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies whether Work Folders should be set up automatically for all users of the affected computer.
#       
# If you enable this policy setting, Work Folders will be set up automatically for all users of the affected computer. This prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. Work Folders will use the settings specified in the "Specify Work Folders settings" policy setting in User Configuration\Administrative Templates\Windows Components\WorkFolders. If the "Specify Work Folders settings" policy setting does not apply to a user, Work Folders is not automatically set up.
#       
# If you disable or do not configure this policy setting, Work Folders uses the "Force automatic setup" option of the "Specify Work Folders settings" policy setting to determine whether to automatically set up Work Folders for a given user.
#       
Force automatic setup for all users:
  lgpo.set:
  - name: Pol_MachineEnableWorkFolders
  - setting: Enabled
  - policy_class: Machine
