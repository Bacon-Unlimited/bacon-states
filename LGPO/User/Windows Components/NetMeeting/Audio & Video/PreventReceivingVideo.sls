# SUPPORTED_NetMeeting3
#
# Prevents users from receiving video.  Users will still be able to send video provided they have the hardware." 
Prevent receiving Video:
  lgpo.set:
  - name: PreventReceivingVideo
  - setting: Enabled
  - policy_class: User
