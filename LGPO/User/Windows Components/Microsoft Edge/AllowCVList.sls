# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# This policy setting lets you decide whether to use the Microsoft Compatibility List (a Microsoft-provided list that helps sites with known compatibility issues to display properly) in Microsoft Edge. By default, the Microsoft Compatibility List is enabled and can be viewed by visiting about:compat.
# 
# If you enable or don’t configure this setting, Microsoft Edge periodically downloads the latest version of the list from Microsoft, applying the updates during browser navigation. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site is automatically rendered as though it’s in whatever version of IE is necessary for it to appear properly.
# 
# If you disable this setting, the Microsoft Compatibility List isn’t used during browser navigation.
Allow Microsoft Compatibility List:
  lgpo.set:
  - name: AllowCVList
  - setting: Enabled
  - policy_class: User
