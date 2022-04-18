# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether a resource hosted on an admin-restricted protocol in the Intranet Zone can run active content such as script, ActiveX, Java and Binary Behaviors. The list of restricted protocols may be set in the Intranet Zone Restricted Protocols section under Network Protocol Lockdown policy.
# 
# If you enable this policy setting, no Intranet Zone content accessed is affected, even for protocols on the restricted list. If you select Prompt from the drop-down box, the Notification bar will appear to allow control over questionable content accessed over any restricted protocols; content over other protocols is unaffected.
# 
# If you disable this policy setting, all attempts to access such content over the restricted protocols is blocked.
# 
# If you do not configure this policy setting, the Notification bar will appear to allow control over questionable content accessed over any restricted protocols when the Network Protocol Lockdown security feature is enabled.
Allow active content over restricted protocols to access my computer:
  lgpo.set:
  - name: IZ_PolicyNetworkProtocolLockdown_5
  - setting:
      IZ_Partname2300: enum-placeholder
  - policy_class: User
