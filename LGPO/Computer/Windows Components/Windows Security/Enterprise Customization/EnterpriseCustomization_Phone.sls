# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the phone number or Skype ID that will be displayed in Windows Security and associated notifications. 
# 
#         Users can click on the contact information to automatically call the supplied number. Skype will be used to initiate the call. 
# 
#         Enabled:
#         Enter the phone number or Skype ID in the Options section.
# 
#         Disabled:
#         A contact phone number or Skype ID will not be shown in either Windows Security or any notifications it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact phone number or Skype ID:
  lgpo.set:
  - name: EnterpriseCustomization_Phone
  - setting:
      Presentation_EnterpriseCustomization_Phone: text-placeholder
  - policy_class: Machine
