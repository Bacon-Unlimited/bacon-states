# windows:SUPPORTED_Win2k
#
# This policy setting determines when software installation policies are updated.
# 
# This policy setting affects all policy settings that use the software installation component of Group Policy, such as policy settings in Software Settings\Software Installation. You can set software installation policy only for Group Policy Objects stored in Active Directory, not for Group Policy Objects on the local computer.
# 
# This policy setting overrides customized settings that the program implementing the software installation policy set when it was installed.
# 
# If you enable this policy setting, you can use the check boxes provided to change the options. If you disable or do not configure this policy setting, it has no effect on the system.
# 
# The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.
# 
# The "Process even if the Group Policy objects have not changed" option updates and reapplies the policies even if the policies have not changed. Many policy setting implementations specify that they are updated only when changed. However, you might want to update unchanged policy settings, such as reapplying a desired policies in case a user has changed it.
Configure software Installation policy processing:
  lgpo.set:
  - name: CSE_AppMgmt
  - setting:
      CSE_NOCHANGES1: boolean-placeholder
      CSE_SLOWLINK1: boolean-placeholder
  - policy_class: Machine
