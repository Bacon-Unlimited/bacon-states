# windows:SUPPORTED_WindowsXP
#
# Specifies the security level for dynamic DNS updates.
# 
# To use this policy setting, click Enabled and then select one of the following values:
# 
# Unsecure followed by secure - computers send secure dynamic updates only when nonsecure dynamic updates are refused.
# 
# Only unsecure - computers send only nonsecure dynamic updates.
# 
# Only secure - computers send only secure dynamic updates.
# 
# If you enable this policy setting, computers that attempt to send dynamic DNS updates will use the security level that you specify in this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use local settings. By default, DNS clients attempt to use unsecured dynamic update first. If an unsecured update is refused, clients try to use secure update.
Update security level:
  lgpo.set:
  - name: DNS_UpdateSecurityLevel
  - setting:
      DNS_UpdateSecurityLevel_Box: enum-placeholder
  - policy_class: Machine
