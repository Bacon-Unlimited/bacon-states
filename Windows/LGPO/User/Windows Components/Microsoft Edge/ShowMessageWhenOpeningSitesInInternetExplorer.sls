# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# You can configure Microsoft Edge to open a site automatically in Internet Explorer 11 and choose to display a notification before the site opens. If you want to display a notification, you must enable Configure the Enterprise Mode Site List or Send all intranets sites to Internet Explorer 11 or both.
# 
# If enabled, the notification appears on a new page. If you want users to continue in Microsoft Edge, select the Show Keep going in Microsoft Edge option from the drop-down list under Options.
# 
# If disabled or not configured, the default app behavior occurs and no additional page displays.
# 
# Default setting: Disabled or not configured
# Related policies:
# -Configure the Enterprise Mode Site List
# -Send all intranet sites to Internet Explorer 11
Show message when opening sites in Internet Explorer:
  lgpo.set:
  - name: ShowMessageWhenOpeningSitesInInternetExplorer
  - setting:
      ShowMessageWhenOpeningSitesInInternetExplorer_Dropdown: enum-placeholder
  - policy_class: User
