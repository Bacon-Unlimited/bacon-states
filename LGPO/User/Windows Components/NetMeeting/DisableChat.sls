# SUPPORTED_NetMeeting3
#
# Disables the Chat feature of NetMeeting.
Disable Chat:
  lgpo.set:
  - name: DisableChat
  - setting: Enabled
  - policy_class: User
