# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the company name that will be displayed in Windows Security and associated notifications. This setting must be enabled for any contact information to appear.
# 
#         Enabled:
#         Enter the company name in the Options section.
# 
#         Disabled:
#         Company information will not be shown at all in either Windows Security or any notifications that it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact company name:
  lgpo.set:
  - name: EnterpriseCustomization_CompanyName
  - setting:
      Presentation_EnterpriseCustomization_CompanyName: text-placeholder
  - policy_class: Machine
