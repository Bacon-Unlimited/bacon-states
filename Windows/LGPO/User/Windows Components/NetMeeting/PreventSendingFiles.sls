# SUPPORTED_NetMeeting3
#
# Prevents users from sending files to others in a conference.
Prevent sending files:
  lgpo.set:
  - name: PreventSendingFiles
  - setting: Enabled
  - policy_class: User
