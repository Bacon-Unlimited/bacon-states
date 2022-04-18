# SUPPORTED_NetMeeting3
#
# Prevents users from receiving files from others in a conference.
Prevent receiving files:
  lgpo.set:
  - name: PreventReceivingFiles
  - setting: Enabled
  - policy_class: User
