# SUPPORTED_IE11
#
# Prevents intranet sites from being opened in any browser except Internet Explorer. But note that If the ‘Send all sites not included in the Enterprise Mode Site List to Microsoft Edge’ (‘RestrictIE’) policy isn’t enabled, this policy has no effect.
# 
# If you enable this policy, all intranet sites are opened in Internet Explorer 11. The only exceptions are sites listed in your Enterprise Mode Site List.
# 
# If you disable or don’t configure this policy, all intranet sites are automatically opened in Microsoft Edge.
# 
# We strongly recommend keeping this policy in sync with the ‘Send all intranet sites to Internet Explorer’ (‘SendIntranetToInternetExplorer’) policy. Additionally, it’s best to enable this policy only if your intranet sites have known compatibility problems with Microsoft Edge.
# 
# Related policies:
# - Send all intranet sites to Internet Explorer (‘SendIntranetToInternetExplorer’)
# - Send all sites not included in the Enterprise Mode Site List to Microsoft Edge (‘RestrictIE’)
# 
# For more info about how to use this policy together with other related policies to create the optimal configuration for your organization, see https://go.microsoft.com/fwlink/?linkid=2094210.
Keep all intranet sites in Internet Explorer:
  lgpo.set:
  - name: KeepIntranetSitesInInternetExplorer
  - setting: Enabled
  - policy_class: Machine
