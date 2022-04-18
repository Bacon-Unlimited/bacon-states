# windows:SUPPORTED_WindowsNET
#
# This policy setting determines whether the client computer redirects its time zone settings to the Remote Desktop Services session.
# 
# If you enable this policy setting, clients that are capable of time zone redirection send their time zone information to the server. The server base time is then used to calculate the current session time (current session time = server base time + client time zone).
# 
# If you disable or do not configure this policy setting, the client computer does not redirect its time zone information and the session time zone is the same as the server time zone.
# 
# Note: Time zone redirection is possible only when connecting to at least a Microsoft Windows Server 2003 terminal server with a client using RDP 5.1 and later.
Allow time zone redirection:
  lgpo.set:
  - name: TS_TIME_ZONE
  - setting: Enabled
  - policy_class: Machine
