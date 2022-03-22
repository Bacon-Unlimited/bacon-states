# SUPPORTED_IE11
#
# This policy setting allows you to manage whether users can launch the report site problems dialog using a menu option.
# 
# If you enable this policy setting, a menu option won’t be available in Internet Explorer settings, or in the tools menu in the desktop. Users won’t be able to use it to launch the report site problems dialog box.
# 
# If you disable or do not configure this policy setting, the menu options will be available.
Turn off the ability to launch report site problems using a menu option:
  lgpo.set:
  - name: NoReportSiteProblems
  - setting: Enabled
  - policy_class: Machine
