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
# LOCATION: \Computer\Windows Components\Microsoft Defender Application Guard\AppHVSI_ClipboardConfig.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide how the clipboard behaves while in Microsoft Defender Application Guard.
# 
# If you enable this setting, you must choose from the following behaviors:
# 
# - Disable clipboard functionality completely between the host and Application Guard
# 
# - Enable the clipboard to copy content from Application Guard to the host
# 
# - Enable the clipboard to copy content from the host to Application Guard.
# 
# Note:
# We recommend that you don't enable copying from the host to Application Guard. If you enable this functionality, a potentially compromised Application Guard session will have access to the host devices clipboard and its content.
# 
# If you choose to enable copying, you must also choose the type of content that can be copied, by using the content options:
# 
# - 1. Allows text copying.
# 
# - 2. Allows image copying.
# 
# - 3. Allows both text and image copying.
# 
# If you disable or don't configure this setting, all clipboard functionality is turned off in Application Guard.
#         
Configure Microsoft Defender Application Guard clipboard settings:
  lgpo.set:
  - name: AppHVSI_ClipboardConfig
  - setting:
      AppHVSIClipboardFileType_AllowedFileType_TextBox: decimal-placeholder
      AppHVSIClipboardSettings_CopyPasteDirection_DropdownList: enum-placeholder
  - policy_class: Machine
