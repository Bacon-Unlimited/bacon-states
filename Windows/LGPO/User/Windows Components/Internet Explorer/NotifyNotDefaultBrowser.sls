# SUPPORTED_IE10
#
# This policy setting allows you to choose whether users will be notified if Internet Explorer is not the default web browser.
# 
# If you enable this policy setting, users will be notified if Internet Explorer is not the default web browser. Users cannot change the setting.
# 
# If you disable this policy setting, users will not be notified if Internet Explorer is not the default web browser. Users cannot change the setting.
# 
# If you do not configure this policy setting, users can choose whether to be notified that Internet Explorer is not the default web browser through the Tell me if Internet Explorer is not the default web browser check box on the Programs tab in the Internet Options dialog box. Note that starting with Internet Explorer 10 on Windows 8, the check box is located on the Advanced tab in the Internet Options dialog box. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.
Notify users if Internet Explorer is not the default web browser:
  lgpo.set:
  - name: NotifyNotDefaultBrowser
  - setting: Enabled
  - policy_class: User
