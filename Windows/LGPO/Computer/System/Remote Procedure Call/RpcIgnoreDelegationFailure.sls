# windows:SUPPORTED_WindowsNET
#
# This policy setting controls whether the RPC Runtime ignores delegation failures when delegation is requested.
# 
# The constrained delegation model, introduced in Windows Server 2003, does not report that delegation was enabled on a security context when a client connects to a server. Callers of RPC and COM are encouraged to use the RPC_C_QOS_CAPABILITIES_IGNORE_DELEGATE_FAILURE flag, but some applications written for the traditional delegation model prior to Windows Server 2003 may not use this flag and will encounter RPC_S_SEC_PKG_ERROR when connecting to a server that uses constrained delegation.
# 
# If you disable this policy setting, the RPC Runtime will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation. 
# 
# If you do not configure this policy setting, it remains disabled and will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation. 
# 
# If you enable this policy setting, then:
# 
# --  "Off" directs the RPC Runtime to generate RPC_S_SEC_PKG_ERROR if the client asks for delegation, but the created security context does not support delegation.
# 
# --  "On" directs the RPC Runtime to accept security contexts that do not support delegation even if delegation was asked for.
# 
# Note: This policy setting will not be applied until the system is rebooted.
Ignore Delegation Failure:
  lgpo.set:
  - name: RpcIgnoreDelegationFailure
  - setting:
      RpcIgnoreDelegationFailureList: enum-placeholder
  - policy_class: Machine
