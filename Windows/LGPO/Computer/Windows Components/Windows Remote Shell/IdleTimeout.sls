# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum time in milliseconds remote shell will stay open without any user activity until it is automatically deleted.
# 
# Any value from 0 to 0x7FFFFFFF can be set. A minimum of 60000 milliseconds (1 minute) is used for smaller values.
# 
# If you enable this policy setting, the server will wait for the specified amount of time since the last received message from the client before terminating the open shell.
# 
# If you do not configure or disable this policy setting, the default value of 900000 or 15 min will be used.
Specify idle Timeout:
  lgpo.set:
  - name: IdleTimeout
  - setting:
      IdleTimeout: decimal-placeholder
  - policy_class: Machine
