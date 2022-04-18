# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy specifies whether Work Folders should use Token Broker for interactive AD FS authentication instead of its own OAuth2 token flow used in previous versions.
Enables the use of Token Broker for AD FS authentication:
  lgpo.set:
  - name: Pol_UserEnableTokenBroker
  - setting: Enabled
  - policy_class: User
