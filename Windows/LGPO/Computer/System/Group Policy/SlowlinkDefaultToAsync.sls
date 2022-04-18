# windows:SUPPORTED_WindowsVista
#
# This policy directs Group Policy processing to skip processing any client side extension that requires synchronous processing (that is, whether computers wait for the network to be fully initialized during computer startup and user logon) when a slow network connection is detected.
# 
# If you enable this policy setting, when a slow network connection is detected, Group Policy processing will always run in an asynchronous manner.
# Client computers will not wait for the network to be fully initialized at startup and logon. Existing users will be logged on using cached credentials,
# which will result in shorter logon times. Group Policy will be applied in the background after the network becomes available.
# Note that because this is a background refresh, extensions requiring synchronous processing such as Software Installation, Folder Redirection
# and Drive Maps preference extension will not be applied.
# 
# Note: There are two conditions that will cause Group Policy to be processed synchronously even if this policy setting is enabled:
# 1 - At the first computer startup after the client computer has joined the domain.
# 2 - If the policy setting "Always wait for the network at computer startup and logon" is enabled.
# 
# If you disable or do not configure this policy setting, detecting a slow network connection will not affect whether Group Policy processing will be synchronous or asynchronous.
# 
#       
Change Group Policy processing to run asynchronously when a slow network connection is detected.:
  lgpo.set:
  - name: SlowlinkDefaultToAsync
  - setting: Enabled
  - policy_class: Machine
