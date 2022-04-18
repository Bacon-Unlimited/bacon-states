# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the consent behavior of Windows Error Reporting for specific event types.
# 
# If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.
# 
# - 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.
# 
# - 1 (Always ask before sending data): Windows prompts the user for consent to send reports.
# 
# - 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.
# 
# - 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.
# 
# - 4 (Send all data): Any data requested by Microsoft is sent automatically.
# 
# If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.
Customize consent settings:
  lgpo.set:
  - name: WerConsentCustomize_1
  - setting:
      WerConsentCustomize:
      - placeholder1
      - placeholder2
  - policy_class: User
