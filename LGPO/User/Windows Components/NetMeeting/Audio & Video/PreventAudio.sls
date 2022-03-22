# SUPPORTED_NetMeeting3
#
# Disables the audio feature of NetMeeting.  Users will not be able to send or receive audio.
Disable Audio:
  lgpo.set:
  - name: PreventAudio
  - setting: Enabled
  - policy_class: User
