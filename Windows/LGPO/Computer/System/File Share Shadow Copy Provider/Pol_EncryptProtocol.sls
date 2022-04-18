# windows:SUPPORTED_Windows8
#
# Determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.
# 
# VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.
# 
# By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted. 
# 
# Note: To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service .
? Allow or Disallow use of encryption to protect the RPC protocol messages between
  File Share Shadow Copy Provider running on application server and File Share Shadow
  Copy Agent running on the file servers.
: lgpo.set:
  - name: Pol_EncryptProtocol
  - setting: Enabled
  - policy_class: Machine
