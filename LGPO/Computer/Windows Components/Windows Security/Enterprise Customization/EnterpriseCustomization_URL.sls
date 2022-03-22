# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Specify the URL that will be displayed in Windows Security and associated notifications. 
# 
#         Users can click on the contact information to visit the specified website. The default web browser will be used. 
# 
#         Enabled:
#         Enter the URL in the Options section.
# 
#         Disabled:
#         A contact website URL will not be shown in either Windows Security or any notifications it creates.
# 
#         Not configured:
#         Same as Disabled.
#     
Specify contact website:
  lgpo.set:
  - name: EnterpriseCustomization_URL
  - setting:
      Presentation_EnterpriseCustomization_URL: text-placeholder
  - policy_class: Machine
