# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# 
#             This policy setting specifies whether to automatically enroll the device to the Mobile Device Management (MDM) service configured in Azure Active Directory (Azure AD). If the enrollment is successful, the device will remotely managed by the MDM service.
# 
#             Important: The device must be registered in Azure AD for enrollment to succeed.
# 
#             If you do not configure this policy setting, automatic MDM enrollment will not be initiated.
# 
#             If you enable this policy setting, a task is created to initiate enrollment of the device to MDM service specified in the Azure AD.
# 
#             If you disable this policy setting, MDM will be unenrolled.
#       
Enable automatic MDM enrollment using default Azure AD credentials:
  lgpo.set:
  - name: MDM_JoinMDM_DisplayName
  - setting:
      MDMApplicationId: text-placeholder
      UseAADCredentialTypeDrop: enum-placeholder
  - policy_class: Machine
