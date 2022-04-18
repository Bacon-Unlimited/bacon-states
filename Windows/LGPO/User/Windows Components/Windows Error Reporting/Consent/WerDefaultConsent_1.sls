# windows:SUPPORTED_Windows_6_3ToVista
#
# This policy setting determines the default consent behavior of Windows Error Reporting.
# 
# If you enable this policy setting, you can set the default consent handling for error reports. The following list describes the Consent level settings that are available in the pull-down menu in this policy setting:
# 
# - Always ask before sending data: Windows prompts users for consent to send reports.
# 
# - Send parameters: Only the minimum data that is required to check for an existing solution is sent automatically, and Windows prompts users for consent to send any additional data that is requested by Microsoft.
# 
# - Send parameters and safe additional data: the minimum data that is required to check for an existing solution, along with data which Windows has determined (within a high probability) does not contain personally-identifiable information is sent automatically, and Windows prompts the user for consent to send any additional data that is requested by Microsoft.
# 
# - Send all data: any error reporting data requested by Microsoft is sent automatically.
# 
# If this policy setting is disabled or not configured, then the consent level defaults to the highest-privacy setting: Always ask before sending data.
Configure Default consent:
  lgpo.set:
  - name: WerDefaultConsent_1
  - setting:
      WerConsent: enum-placeholder
  - policy_class: User
