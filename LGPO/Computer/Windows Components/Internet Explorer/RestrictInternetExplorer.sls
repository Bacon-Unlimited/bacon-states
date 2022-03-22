# SUPPORTED_IE11WIN10_1607
#
# This setting lets you decide whether to open all sites not included in the Enterprise Mode Site List in Microsoft Edge. If you use this setting, you must also turn on the Administrative Templates\Windows Components\Internet Explorer\Use the Enterprise Mode IE website list policy setting and you must include at least one site in the Enterprise Mode Site List.
# 
# Enabling this setting automatically opens all sites not included in the Enterprise Mode Site List in Microsoft Edge.
# 
# Disabling, or not configuring this setting, opens all sites based on the currently active browser.
# 
# Note: If you've also enabled the Administrative Templates\Windows Components\Microsoft Edge\Send all intranet sites to Internet Explorer 11 policy setting, then all intranet sites will continue to open in Internet Explorer 11.
Send all sites not included in the Enterprise Mode Site List to Microsoft Edge.:
  lgpo.set:
  - name: RestrictInternetExplorer
  - setting: Enabled
  - policy_class: Machine
