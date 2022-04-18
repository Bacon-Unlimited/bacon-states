# SUPPORTED_NetMeeting3
#
# Limits the bandwidth audio and video will consume when in a conference.  This setting will guide NetMeeting to choose the right formats and send rate so that the bandwidth is limited.
Limit the bandwidth of Audio and Video:
  lgpo.set:
  - name: SetAVThroughput
  - setting:
      AVThroughput: decimal-placeholder
  - policy_class: User
