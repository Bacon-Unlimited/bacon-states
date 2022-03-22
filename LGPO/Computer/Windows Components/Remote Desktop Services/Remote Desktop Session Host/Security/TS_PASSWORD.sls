# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether Remote Desktop Services always prompts the client for a password upon connection.
# 
# You can use this setting to enforce a password prompt for users logging on to Remote Desktop Services, even if they already provided the password in the Remote Desktop Connection client.
# 
# By default, Remote Desktop Services allows users to automatically log on by entering a password in the Remote Desktop Connection client.
# 
# If you enable this policy setting, users cannot automatically log on to Remote Desktop Services by supplying their passwords in the Remote Desktop Connection client. They are prompted for a password to log on.
# 
# If you disable this policy setting, users can always log on to Remote Desktop Services automatically by supplying their passwords in the Remote Desktop Connection client.
# 
# If you do not configure this policy setting, automatic logon is not specified at the Group Policy level.
# 
Always prompt for password upon connection:
  lgpo.set:
  - name: TS_PASSWORD
  - setting: Enabled
  - policy_class: Machine
