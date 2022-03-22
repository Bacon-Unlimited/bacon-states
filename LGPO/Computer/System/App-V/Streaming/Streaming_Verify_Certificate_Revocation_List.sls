# windows:SUPPORTED_Windows7
#
# Verifies Server certificate revocation status before streaming using HTTPS.
Verify certificate revocation list:
  lgpo.set:
  - name: Streaming_Verify_Certificate_Revocation_List
  - setting: Enabled
  - policy_class: Machine
