# SUPPORTED_IE10
#
# This policy setting shows the Content Advisor setting on the Content tab of the Internet Options dialog box.
# 
# If you enable this policy setting, Internet Explorer displays the Content Advisor setting on the Content tab of the Internet Options dialog box. Users can change Content Advisor settings.
# 
# If you disable or do not configure this policy setting, Internet Explorer does not display the Content Advisor setting on the Content tab of the Internet Options dialog box.
# 
# Note: This policy is no longer supported starting with Windows 10 Version 1607.
Show Content Advisor on Internet Options:
  lgpo.set:
  - name: Content_ShowContentAdvisor
  - setting: Enabled
  - policy_class: Machine
