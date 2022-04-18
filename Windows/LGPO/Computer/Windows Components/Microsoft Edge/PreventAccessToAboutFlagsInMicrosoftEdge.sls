# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# This policy settings lets you decide whether employees can access the about:flags page, which is used to change developer settings and to enable experimental features.
# 
# If you enable this policy setting, employees can't access the about:flags page.
# 
# If you disable or don't configure this setting, employees can access the about:flags page.
Prevent access to the about:flags page in Microsoft Edge:
  lgpo.set:
  - name: PreventAccessToAboutFlagsInMicrosoftEdge
  - setting: Enabled
  - policy_class: Machine
