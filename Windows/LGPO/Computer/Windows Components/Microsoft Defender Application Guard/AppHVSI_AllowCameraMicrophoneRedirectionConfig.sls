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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_AllowCameraMicrophoneRedirectionConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# The policy allows you to determine whether applications inside Microsoft Defender Application Guard can access the devices camera and microphone when these settings are enabled on the users device.
# 
# If you enable this policy, applications inside Microsoft Defender Application Guard will be able to access the camera and microphone on the users device.
# 
# If you disable or don't configure this policy, applications inside Microsoft Defender Application Guard will be unable to access the camera and microphone on the users device.
# 
# Important: If you turn on this policy, a compromised container could bypass camera and microphone permissions and access the camera and microphone without the users knowledge. To prevent unauthorized access, we recommend that camera and microphone privacy settings be turned off on the users device when they are not needed.
#         
Allow camera and microphone access in Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AllowCameraMicrophoneRedirectionConfig
  - setting: Enabled
  - policy_class: Machine
