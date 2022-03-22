# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether the client default printer is automatically set as the default printer in a session on an RD Session Host server.
# 
# By default, Remote Desktop Services automatically designates the client default printer as the default printer in a session on an RD Session Host server. You can use this policy setting to override this behavior.
# 
# If you enable this policy setting, the default printer is the printer specified on the remote computer.
# 
# If you disable this policy setting, the RD Session Host server automatically maps the client default printer and sets it as the default printer upon connection.
# 
# If you do not configure this policy setting, the default printer is not specified at the Group Policy level.
# 
Do not set default client printer to be default printer in a session:
  lgpo.set:
  - name: TS_CLIENT_DEFAULT_M
  - setting: Enabled
  - policy_class: Machine
