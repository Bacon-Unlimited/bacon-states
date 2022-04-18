# SUPPORTED_IE8ONLY
#
# This policy setting allows the user to enable the SmartScreen Filter, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware.
# 
# If you enable this policy setting, the user is not prompted to turn on SmartScreen Filter. You must specify which mode the SmartScreen Filter uses: on, or off.All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the user.
# 
# If you disable or do not configure this policy setting, the user is prompted to decide whether to turn on the SmartScreen Filter during the first-run experience.
Turn off Managing SmartScreen Filter for Internet Explorer 8:
  lgpo.set:
  - name: Disable_Managing_Safety_Filter_IE8
  - setting:
      IE8SafetyFilterOptions: enum-placeholder
  - policy_class: Machine
