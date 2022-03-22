# SUPPORTED_IE11
#
# This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.
# 
# If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.
# 
# If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.
Use the Enterprise Mode IE website list:
  lgpo.set:
  - name: EnterpriseModeSiteList
  - setting:
      EnterSiteListPrompt: text-placeholder
  - policy_class: User
