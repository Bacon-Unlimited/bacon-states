# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether domain controllers (DC) will dynamically register DC Locator site-specific SRV records for the closest sites where no DC for the same domain exists (or no Global Catalog for the same forest exists). These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.
# 
# If you enable this policy setting, the DCs to which this setting is applied dynamically register DC Locator site-specific DNS SRV records for the closest sites where no DC for the same domain, or no Global Catalog for the same forest, exists.
# 
# If you disable this policy setting, the DCs will not register site-specific DC Locator DNS SRV records for any other sites but their own.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Use automated site coverage by the DC Locator DNS SRV Records:
  lgpo.set:
  - name: Netlogon_AutoSiteCoverage
  - setting: Enabled
  - policy_class: Machine
