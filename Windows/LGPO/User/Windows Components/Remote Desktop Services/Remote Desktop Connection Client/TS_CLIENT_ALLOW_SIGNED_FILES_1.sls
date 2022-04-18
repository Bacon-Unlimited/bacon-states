# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify whether users can run Remote Desktop Protocol (.rdp) files from a publisher that signed the file with a valid certificate. A valid certificate is one issued by an authority recognized by the client, such as the issuers in the client's Third-Party Root Certification Authorities certificate store. This policy setting also controls whether the user can start an RDP session by using default .rdp settings (for example, when a user directly opens the Remote Desktop Connection [RDC] client without specifying an .rdp file).
# 
# If you enable or do not configure this policy setting, users can run .rdp files that are signed with a valid certificate. Users can also start an RDP session with default .rdp settings by directly opening the RDC client. When a user starts an RDP session, the user is asked to confirm whether they want to connect.
# 
# If you disable this policy setting, users cannot run .rdp files that are signed with a valid certificate. Additionally, users cannot start an RDP session by directly opening the RDC client and specifying the remote computer name. When a user tries to start an RDP session, the user receives a message that the publisher has been blocked.
# 
# Note: You can define this policy setting in the Computer Configuration node or in the User Configuration node. If you configure this policy setting for the computer, all users on the computer are affected.
# 
Allow .rdp files from valid publishers and user's default .rdp settings:
  lgpo.set:
  - name: TS_CLIENT_ALLOW_SIGNED_FILES_1
  - setting: Enabled
  - policy_class: User
