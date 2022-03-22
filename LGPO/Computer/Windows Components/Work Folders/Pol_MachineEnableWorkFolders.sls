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
