# SUPPORTED_IE7ONLY
#
# This policy setting prevents the user from managing a filter that warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing."
# 
# If you enable this policy setting, the user is not prompted to enable the phishing filter. You must specify which mode the phishing filter uses: manual, automatic, or off.
# 
# If you select manual mode, the phishing filter performs only local analysis, and the user is prompted to permit any data to be sent to Microsoft. If the feature is fully enabled, all website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the user.
# 
# If you disable or do not configure this policy setting, the user is prompted to decide the mode of operation for the phishing filter.
Prevent managing the phishing filter:
  lgpo.set:
  - name: Disable_Managing_Phishing_Filter
  - setting:
      PhishingOptions: enum-placeholder
  - policy_class: User
