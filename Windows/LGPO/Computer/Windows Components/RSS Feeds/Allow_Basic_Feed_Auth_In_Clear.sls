# SUPPORTED_IE8
#
# This policy setting allows users to have their feeds authenticated through the Basic authentication scheme over an unencrypted HTTP connection.
# 
# If you enable this policy setting, the Windows RSS Platform authenticates feeds to servers by using the Basic authentication scheme in combination with a less secure HTTP connection.
# 
# If you disable or do not configure this policy setting, the Windows RSS Platform does not authenticate feeds to servers by using the Basic authentication scheme in combination with a less secure HTTP connection.
# 
# A developer cannot change this policy setting through the Feed APIs.
Turn on Basic feed authentication over HTTP:
  lgpo.set:
  - name: Allow_Basic_Feed_Auth_In_Clear
  - setting: Enabled
  - policy_class: Machine
