# windows:SUPPORTED_WindowsXP
#
# This policy setting determines if dynamic registration of the domain controller (DC) locator DNS resource records is enabled. These DNS records are dynamically registered by the Net Logon service and are used by the Locator algorithm to locate the DC.
# 
# If you enable this policy setting, DCs to which this setting is applied dynamically register DC Locator DNS resource records through dynamic DNS update-enabled network connections.
# 
# If you disable this policy setting, DCs will not register DC Locator DNS resource records.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify dynamic registration of the DC Locator DNS Records:
  lgpo.set:
  - name: Netlogon_UseDynamicDns
  - setting: Enabled
  - policy_class: Machine
