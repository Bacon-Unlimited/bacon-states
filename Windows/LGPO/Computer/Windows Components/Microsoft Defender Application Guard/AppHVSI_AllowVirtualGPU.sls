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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_AllowVirtualGPU.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting determines whether Microsoft Defender Application Guard renders graphics using hardware or software acceleration.
# 
# If you enable this setting, Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If you enable this setting without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering.
# 
# Note:
# Be aware that enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.
# 
# If you disable or dont configure this setting, Microsoft Defender Application Guard uses software-based (CPU) rendering and wont load any third-party graphics drivers or interact with any connected graphics hardware.
#         
Allow hardware-accelerated rendering for Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AllowVirtualGPU
  - setting: Enabled
  - policy_class: Machine
