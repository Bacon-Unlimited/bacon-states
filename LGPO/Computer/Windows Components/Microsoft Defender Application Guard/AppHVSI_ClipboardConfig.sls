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
# We recommend that you don't enable copying from the host to Application Guard. If you enable this functionality, a potentially compromised Application Guard session will have access to the host device’s clipboard and its content.
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