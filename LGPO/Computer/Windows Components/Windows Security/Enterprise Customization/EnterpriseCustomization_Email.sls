# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the email address or email ID that will be displayed in Windows Security and associated notifications. 
# 
#         Users can click on the contact information to create an email that will be sent to the specified address. The default email application will be used. 
# 
#         Enabled:
#         Enter the email address or email ID in the Options section.
# 
#         Disabled:
#         A contact email address or email ID will not be shown in either Windows Security or any notifications it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact email address or Email ID:
  lgpo.set:
  - name: EnterpriseCustomization_Email
  - setting:
      Presentation_EnterpriseCustomization_Email: text-placeholder
  - policy_class: Machine
