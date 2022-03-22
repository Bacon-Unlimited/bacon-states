# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide how the print functionality behaves while in Microsoft Defender Application Guard.
# 
# If you enable this setting, you must choose one or many of the following behaviors:
# 
# - Disable all print functionality in Application Guard.
# 
# - Enable printing to existing network printers.
# 
# - Enable printing to local printers.
# 
# - Enable printing to PDF, allows people to print as PDF and save the resulting file on the host.
# 
# - Enable printing to XPS, allows people to print as XPS and save the resulting file on the host.
# 
# If you disable or don't configure this setting, all print functionality is turned off in Application Guard.
#         
Configure Microsoft Defender Application Guard print settings:
  lgpo.set:
  - name: AppHVSI_PrintingConfig
  - setting:
      AppHVSIPrintingSettings_TextBox: decimal-placeholder
  - policy_class: Machine
