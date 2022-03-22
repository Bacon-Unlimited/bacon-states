# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Display specified contact information to local users in Windows Security notifications.
# 
#         Enabled:
#         Your company contact information will be displayed in notifications that come from Windows Security.
# 
#         After setting this to Enabled, you must configure the Specify contact company name GP setting and at least one of the following GP settings:
#         -Specify contact phone number or Skype ID
#         -Specify contact email number or email ID
#         -Specify contact website
#         Please note that in some cases we will be limiting the contact options that are displayed based on the notification space available.
#         
#         Disabled:
#         No contact information will be shown on notifications.
# 
#         Not configured:
#         Same as Disabled.
#     
Configure customized notifications:
  lgpo.set:
  - name: EnterpriseCustomization_EnableCustomizedToasts
  - setting: Enabled
  - policy_class: Machine
