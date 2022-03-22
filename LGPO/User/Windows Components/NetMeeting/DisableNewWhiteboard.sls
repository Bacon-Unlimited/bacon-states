# SUPPORTED_NetMeeting3
#
# Disables the T.126 whiteboard feature of NetMeeting.
Disable Whiteboard:
  lgpo.set:
  - name: DisableNewWhiteboard
  - setting: Enabled
  - policy_class: User
