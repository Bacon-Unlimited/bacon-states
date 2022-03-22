# SUPPORTED_IE8
#
# Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.
# 
# If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user cannot set custom default secondary home pages.
# 
# If you disable or do not configure this policy setting, the user can add secondary home pages.
# 
# Note: If the “Disable Changing Home Page Settings” policy is enabled, the user cannot add secondary home pages.
Disable changing secondary home page settings:
  lgpo.set:
  - name: SecondaryHomePages
  - setting:
      SecondaryHomePagesList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
