# SUPPORTED_IE7
#
# This policy setting prevents the user from ignoring Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate errors that interrupt browsing (such as "expired", "revoked", or "name mismatch" errors) in Internet Explorer.
# 
# If you enable this policy setting, the user cannot continue browsing.
# 
# If you disable or do not configure this policy setting, the user can choose to ignore certificate errors and continue browsing.
Prevent ignoring certificate errors:
  lgpo.set:
  - name: NoCertError
  - setting: Enabled
  - policy_class: Machine
