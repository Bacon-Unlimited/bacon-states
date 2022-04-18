# SUPPORTED_IE9
#
# This policy setting prevents the user from managing SmartScreen Filter, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware.
# 
# If you enable this policy setting, the user is not prompted to turn on SmartScreen Filter. All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the user.
# 
# If you disable or do not configure this policy setting, the user is prompted to decide whether to turn on SmartScreen Filter during the first-run experience.
Prevent managing SmartScreen Filter:
  lgpo.set:
  - name: Disable_Managing_Safety_Filter_IE9
  - setting:
      IE9SafetyFilterOptions: enum-placeholder
  - policy_class: Machine
