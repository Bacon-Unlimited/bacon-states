# SUPPORTED_IE5
#
# This setting specifies the number of days that Internet Explorer tracks views of pages in the History List. To access the Temporary Internet Files and History Settings dialog box, from the Menu bar, on the Tools menu, click Internet Options, click the General tab, and then click Settings under Browsing history.
# 
# If you enable this policy setting, a user cannot set the number of days that Internet Explorer tracks views of the pages in the History List. You must specify the number of days that Internet Explorer tracks views of pages in the History List. Users can not delete browsing history.
# 
# If you disable or do not configure this policy setting, a user can set the number of days that Internet Explorer tracks views of pages in the History list. Users can delete browsing history.
Disable "Configuring History":
  lgpo.set:
  - name: RestrictHistory
  - setting:
      DaysToKeep_Prompt: decimal-placeholder
  - policy_class: User
