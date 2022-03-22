# SUPPORTED_NetMeeting3
#
# Disables full duplex mode audio.  Users will not be able to listen to incoming audio while speaking into the microphone.  Older audio hardware does not perform well when in full duplex mode.
Disable full duplex Audio:
  lgpo.set:
  - name: PreventFullDuplex
  - setting: Enabled
  - policy_class: User
