# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps.
# 
# If you enable this setting, Microsoft Edge looks for the Enterprise Mode Site List XML file. This file includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode.
# 
# If you disable or don't configure this setting, Microsoft Edge won't use the Enterprise Mode Site List XML file. In this case, employees might experience compatibility problems while using legacy apps.
Configure the Enterprise Mode Site List:
  lgpo.set:
  - name: EnterpriseModeSiteList
  - setting:
      EnterSiteListPrompt: text-placeholder
  - policy_class: Machine
