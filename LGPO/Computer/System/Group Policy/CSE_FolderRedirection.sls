# windows:SUPPORTED_Win2k
#
# This policy setting determines when folder redirection policies are updated.
# 
# This policy setting affects all policies that use the folder redirection component of Group Policy, such as those in WindowsSettings\Folder Redirection. You can only set folder redirection policy for Group Policy objects, stored in Active Directory, not for Group Policy objects on the local computer.
# 
# This policy setting overrides customized settings that the program implementing the folder redirection policy setting set when it was installed.
# 
# If you enable this policy setting, you can use the check boxes provided to change the options. If you disable or do not configure this policy setting, it has no effect on the system.
# 
# The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.
# 
# The "Process even if the Group Policy objects have not changed" option updates and reapplies the policies even if the policies have not changed. Many policy implementations specify that they are updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
Configure folder redirection policy processing:
  lgpo.set:
  - name: CSE_FolderRedirection
  - setting:
      CSE_NOCHANGES4: boolean-placeholder
      CSE_SLOWLINK4: boolean-placeholder
  - policy_class: Machine