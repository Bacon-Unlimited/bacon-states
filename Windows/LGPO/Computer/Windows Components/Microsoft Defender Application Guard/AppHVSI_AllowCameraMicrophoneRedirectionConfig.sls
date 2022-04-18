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
