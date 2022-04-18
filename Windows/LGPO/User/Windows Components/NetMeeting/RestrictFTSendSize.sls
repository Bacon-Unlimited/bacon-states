# SUPPORTED_NetMeeting3
#
# Limits the size of files users can send to others in a conference.
Limit the size of sent files:
  lgpo.set:
  - name: RestrictFTSendSize
  - setting:
      RestrictFTSize: decimal-placeholder
  - policy_class: User
