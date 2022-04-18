# SUPPORTED_IE8
#
# This policy setting allows you to control which Domains are included in the discovery functionality of the Internet Explorer Site discovery Toolkit(SDTK). When enabled the feature will collect data from sites that are part of the domains configured in the policy. When disabled, or not configured, all domains will be included in site discovery. This policy can be used in conjunction with other policies controlling sites included in Site Discovery.
# 
# To configure the domain(s) included in data collection for the IE Site Discovery Toolkit, Add one domain per line to the text box. For example:
# 
# microsoft.sharepoint.com
# outlook.com
# onedrive.com
# timecard.contoso.com
# LOBApp.contoso.com
Limit Site Discovery output by Domain:
  lgpo.set:
  - name: SiteDiscoveryDomainAllowList
  - setting:
      SiteDiscoveryDomainAllowList: multiText-placeholder
  - policy_class: User
