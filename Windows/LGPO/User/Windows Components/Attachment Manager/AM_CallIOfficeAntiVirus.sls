# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant. 
# 
# If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.
# 
# If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.
# 
# If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.
Notify antivirus programs when opening attachments:
  lgpo.set:
  - name: AM_CallIOfficeAntiVirus
  - setting: Enabled
  - policy_class: User
