# SUPPORTED_NetMeeting3
#
# Disables the Advanced Calling button on the General Options page.  Users will not then be able to change the call placement method and the servers used.
Disable the Advanced Calling button:
  lgpo.set:
  - name: DisableAdvCallingButton
  - setting: Enabled
  - policy_class: User
