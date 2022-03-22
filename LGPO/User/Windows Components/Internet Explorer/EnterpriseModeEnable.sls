# SUPPORTED_IE11
#
# This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.
# 
# If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.
# 
# If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.
Let users turn on and use Enterprise Mode from the Tools menu:
  lgpo.set:
  - name: EnterpriseModeEnable
  - setting:
      EnterReportBackPrompt: text-placeholder
  - policy_class: User
