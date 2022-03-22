# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to control the redirection of smart card devices in a Remote Desktop Services session.
# 
# If you enable this policy setting, Remote Desktop Services users cannot use a smart card to log on to a Remote Desktop Services session.
# 
# If you disable or do not configure this policy setting, smart card device redirection is allowed. By default, Remote Desktop Services automatically redirects smart card devices on connection.
# 
# Note: The client computer must be running at least Microsoft Windows 2000 Server or at least Microsoft Windows XP Professional and the target server must be joined to a domain.
Do not allow smart card device redirection:
  lgpo.set:
  - name: TS_SMART_CARD
  - setting: Enabled
  - policy_class: Machine
