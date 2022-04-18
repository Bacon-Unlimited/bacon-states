# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify whether to require user authentication for remote connections to the RD Session Host server by using Network Level Authentication. This policy setting enhances security by requiring that user authentication occur earlier in the remote connection process.
# 
# If you enable this policy setting, only client computers that support Network Level Authentication can connect to the RD Session Host server.
# 
# To determine whether a client computer supports Network Level Authentication, start Remote Desktop Connection on the client computer, click the icon in the upper-left corner of the Remote Desktop Connection dialog box, and then click About. In the About Remote Desktop Connection dialog box, look for the phrase Network Level Authentication supported.
# 
# If you disable this policy setting, Network Level Authentication is not required for user authentication before allowing remote connections to the RD Session Host server.
# 
# If you do not configure this policy setting, the local setting on the target computer will be enforced. On Windows Server 2012 and Windows 8, Network Level Authentication is enforced by default.
# 
# Important: Disabling this policy setting provides less security because user authentication will occur later in the remote connection process.
# 
Require user authentication for remote connections by using Network Level Authentication:
  lgpo.set:
  - name: TS_USER_AUTHENTICATION_POLICY
  - setting: Enabled
  - policy_class: Machine
