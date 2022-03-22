# SUPPORTED_NetMeeting3
#
# Disables the 2.x whiteboard feature of NetMeeting.
# 
# The 2.x whiteboard is available for compatibility with older versions of NetMeeting only.
# 
# Deployers who do not need it can save bandwidth by disabling it.
Disable NetMeeting 2.x Whiteboard:
  lgpo.set:
  - name: DisableOldWhiteboard
  - setting: Enabled
  - policy_class: User
