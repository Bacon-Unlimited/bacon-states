# SUPPORTED_NetMeeting3
#
# Sets the level of security for both outgoing and incoming NetMeeting calls.
Set Call Security options:
  lgpo.set:
  - name: SetSecurityOptions
  - setting:
      SetSecurityLevel: enum-placeholder
  - policy_class: User
