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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_AllowAppHVSIConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting enables application isolation through Microsoft Defender Application Guard.
# 
# Application Guard uses Windows Hypervisor to create a virtualized environment for apps that are configured to use virtualization-based security isolation. While in isolation, improper user interactions and app vulnerabilities cant compromise the kernel or any other apps running outside of the virtualized environment.
# 
# If you enable this setting, Application Guard is turned on for your organization.
#         
Turn on Microsoft Defender Application Guard in Managed Mode:
  lgpo.set:
  - name: AppHVSI_AllowAppHVSIConfig
  - setting:
      AppHVSI_AllowAppHVSI_TextBox: decimal-placeholder
  - policy_class: Machine
