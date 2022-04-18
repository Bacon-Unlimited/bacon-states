# windows:SUPPORTED_WindowsVista
#
# Turns off the handwriting recognition error reporting tool.
# 
# The handwriting recognition error reporting tool enables users to report errors encountered in Tablet PC Input Panel. The tool generates error reports and transmits them to Microsoft over a secure connection. Microsoft uses these error reports to improve handwriting recognition in future versions of Windows.
# 
# If you enable this policy, users cannot start the handwriting recognition error reporting tool or send error reports to Microsoft.
# 
# If you disable this policy, Tablet PC users can report handwriting recognition errors to Microsoft.
# 
# If you do not configure this policy Tablet PC users can report handwriting recognition errors to Microsoft.
Turn off handwriting recognition error reporting:
  lgpo.set:
  - name: PreventHandwritingErrorReports_1
  - setting: Enabled
  - policy_class: User
