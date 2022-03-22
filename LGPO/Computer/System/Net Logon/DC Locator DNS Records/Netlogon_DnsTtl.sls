# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the value for the Time-To-Live (TTL) field in SRV resource records that are registered by the Net Logon service. These DNS records are dynamically registered, and they are used to locate the domain controller (DC).
# 
# To specify the TTL for DC Locator DNS records, click Enabled, and then enter a value in seconds (for example, the value "900" is 15 minutes).
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Set TTL  in the DC Locator DNS Records:
  lgpo.set:
  - name: Netlogon_DnsTtl
  - setting:
      Netlogon_DnsTtlLabel: decimal-placeholder
  - policy_class: Machine
