# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Display specified contact information to local users in a contact card flyout menu in Windows Security
# 
#         Enabled:
#         Your company contact information will be displayed in a flyout menu in Windows Security.
# 
#         After setting this to Enabled, you must configure the Specify contact company name GP setting and at least one of the following GP settings:
#         -Specify contact phone number or Skype ID
#         -Specify contact email number or email ID
#         -Specify contact website
# 
#         Disabled:
#         No contact information will be shown in Windows Security.
# 
#         Not configured:
#         Same as Disabled.
#     
Configure customized contact information:
  lgpo.set:
  - name: EnterpriseCustomization_EnableInAppCustomization
  - setting: Enabled
  - policy_class: Machine
