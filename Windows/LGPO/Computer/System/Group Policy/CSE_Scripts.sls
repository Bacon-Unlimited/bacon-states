# windows:SUPPORTED_Win2k
#
# This policy setting determines when policies that assign shared scripts are updated.
# 
# This policy setting affects all policies that use the scripts component of Group Policy, such as those in WindowsSettings\Scripts. It overrides customized settings that the program implementing the scripts policy set when it was installed.
# 
# If you enable this policy setting, you can use the check boxes provided to change the options. If you disable or do not configure this setting, it has no effect on the system.
# 
# The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.
# 
# The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes will not take effect until the next user logon or system restart.
# 
# The "Process even if the Group Policy objects have not changed" option updates and reapplies the policies even if the policies have not changed. Many policy implementations specify that they are updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
Configure scripts policy processing:
  lgpo.set:
  - name: CSE_Scripts
  - setting:
      CSE_NOBACKGROUND7: boolean-placeholder
      CSE_NOCHANGES7: boolean-placeholder
      CSE_SLOWLINK7: boolean-placeholder
  - policy_class: Machine
