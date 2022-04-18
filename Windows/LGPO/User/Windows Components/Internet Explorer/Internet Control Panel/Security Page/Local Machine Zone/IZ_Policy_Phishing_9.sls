# SUPPORTED_IE7
#
# This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.
# 
# If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.
# 
# If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.
# 
# If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.
# 
# Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
Turn on SmartScreen Filter scan:
  lgpo.set:
  - name: IZ_Policy_Phishing_9
  - setting:
      IZ_Partname2301: enum-placeholder
  - policy_class: User
