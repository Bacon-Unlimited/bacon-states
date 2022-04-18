# SUPPORTED_WIN7
#
# 
#         This policy setting lets you capture the input and output of Windows PowerShell commands into text-based transcripts.
# 
#         If you enable this policy setting, Windows PowerShell will enable transcripting for Windows PowerShell, the Windows PowerShell ISE, and any other
#         applications that leverage the Windows PowerShell engine. By default, Windows PowerShell will record transcript output to each users' My Documents
#         directory, with a file name that includes 'PowerShell_transcript', along with the computer name and time started. Enabling this policy is equivalent
#         to calling the Start-Transcript cmdlet on each Windows PowerShell session.
# 
#         If you disable this policy setting, transcripting of PowerShell-based applications is disabled by default, although transcripting can still be enabled
#         through the Start-Transcript cmdlet.
#         
#         If you use the OutputDirectory setting to enable transcript logging to a shared location, be sure to limit access to that directory to prevent users
#         from viewing the transcripts of other users or computers.
# 
#         Note: This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
#       
Turn on PowerShell Transcription:
  lgpo.set:
  - name: EnableTranscripting
  - setting:
      EnableInvocationHeader: boolean-placeholder
      OutputDirectory: text-placeholder
  - policy_class: User
