# windows:SUPPORTED_Win2k
#
# This policy setting determines when disk quota policies are updated.
# 
# This policy setting affects all policies that use the disk quota component of Group Policy, such as those in Computer Configuration\Administrative Templates\System\Disk Quotas.
# 
# This policy setting overrides customized settings that the program implementing the disk quota policy set when it was installed.
# 
# If you enable this policy setting, you can use the check boxes provided to change the options. If you disable or do not configure this policy setting, it has no effect on the system.
# 
# The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.
# 
# The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes will not take effect until the next user logon or system restart.
# 
# The "Process even if the Group Policy objects have not changed" option updates and reapplies the policies even if the policies have not changed. Many policy implementations specify that they are updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
Configure disk quota policy processing:
  lgpo.set:
  - name: CSE_DiskQuota
  - setting:
      CSE_NOBACKGROUND2: boolean-placeholder
      CSE_NOCHANGES2: boolean-placeholder
      CSE_SLOWLINK2: boolean-placeholder
  - policy_class: Machine
