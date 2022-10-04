####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\MDM\MDM_JoinMDM_DisplayName.sls
#
# SUPPORTED WINDOWS OS
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
