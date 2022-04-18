# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure e-mail scanning. When e-mail scanning is enabled, the engine will parse the mailbox and mail files, according to their specific format, in order to analyze the mail bodies and attachments. Several e-mail formats are currently supported, for example: pst (Outlook), dbx, mbx, mime (Outlook Express), binhex (Mac).
# 
#     If you enable this setting, e-mail scanning will be enabled.
# 
#     If you disable or do not configure this setting, e-mail scanning will be disabled.
Turn on e-mail scanning:
  lgpo.set:
  - name: Scan_DisableEmailScanning
  - setting: Enabled
  - policy_class: Machine
