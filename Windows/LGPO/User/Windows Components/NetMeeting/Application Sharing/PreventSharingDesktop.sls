# SUPPORTED_NetMeeting3
#
# Prevents users from sharing the whole desktop.  They will still be able to share individual applications.
Prevent Desktop Sharing:
  lgpo.set:
  - name: PreventSharingDesktop
  - setting: Enabled
  - policy_class: User
