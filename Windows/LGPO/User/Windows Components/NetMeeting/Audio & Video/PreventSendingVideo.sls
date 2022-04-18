# SUPPORTED_NetMeeting3
#
# Prevents users from sending video if they have the hardware.  Users will still be able to receive video from others.
Prevent sending Video:
  lgpo.set:
  - name: PreventSendingVideo
  - setting: Enabled
  - policy_class: User
