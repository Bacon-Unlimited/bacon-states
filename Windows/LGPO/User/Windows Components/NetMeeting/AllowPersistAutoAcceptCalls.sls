# SUPPORTED_NetMeeting3
#
# Make the automatic acceptance of incoming calls persistent.
Allow persisting automatic acceptance of Calls:
  lgpo.set:
  - name: AllowPersistAutoAcceptCalls
  - setting: Enabled
  - policy_class: User
