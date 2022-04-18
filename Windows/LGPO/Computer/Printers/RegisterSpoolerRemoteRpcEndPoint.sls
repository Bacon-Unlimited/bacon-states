# windows:SUPPORTED_WindowsNET
#
# This policy controls whether the print spooler will accept client connections.
# 
# When the policy is unconfigured or enabled, the spooler will always accept client connections.
# 
# When the policy is disabled, the spooler will not accept client connections nor allow users to share printers.  All printers currently shared will continue to be shared.
# 
# The spooler must be restarted for changes to this policy to take effect.
Allow Print Spooler to accept client connections:
  lgpo.set:
  - name: RegisterSpoolerRemoteRpcEndPoint
  - setting: Enabled
  - policy_class: Machine
