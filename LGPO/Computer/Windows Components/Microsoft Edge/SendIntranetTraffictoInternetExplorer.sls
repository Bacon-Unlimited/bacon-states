# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether your intranet sites should all open using Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge.
# 
# If you enable this setting, all intranet sites are automatically opened using Internet Explorer 11.
# 
# If you disable or don't configure this setting, all intranet sites are automatically opened using Microsoft Edge.
Send all intranet sites to Internet Explorer 11:
  lgpo.set:
  - name: SendIntranetTraffictoInternetExplorer
  - setting: Enabled
  - policy_class: Machine
