# SUPPORTED_NetMeeting3
#
# Disables the remote desktop sharing feature of NetMeeting.  Users will not be able to set it up or use it for controlling their computers remotely.
Disable remote Desktop Sharing:
  lgpo.set:
  - name: DisableRDS
  - setting: Enabled
  - policy_class: Machine
