# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to prevent the mapping of client drives in a Remote Desktop Services session (drive redirection).
# 
# By default, an RD Session Host server maps client drives automatically upon connection. Mapped drives appear in the session folder tree in File Explorer or Computer in the format <driveletter> on <computername>. You can use this policy setting to override this behavior.
# 
# If you enable this policy setting, client drive redirection is not allowed in Remote Desktop Services sessions, and Clipboard file copy redirection is not allowed on computers running Windows Server 2003, Windows 8, and Windows XP.
# 
# If you disable this policy setting, client drive redirection is always allowed. In addition, Clipboard file copy redirection is always allowed if Clipboard redirection is allowed.
# 
# If you do not configure this policy setting, client drive redirection and Clipboard file copy redirection are not specified at the Group Policy level.
# 
Do not allow drive redirection:
  lgpo.set:
  - name: TS_CLIENT_DRIVE_M
  - setting: Enabled
  - policy_class: Machine
