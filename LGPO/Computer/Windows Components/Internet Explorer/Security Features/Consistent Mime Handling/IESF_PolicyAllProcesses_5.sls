# SUPPORTED_IE6SP2
#
# Internet Explorer uses Multipurpose Internet Mail Extensions (MIME) data to determine file handling procedures for files received through a Web server.
# 
# This policy setting determines whether Internet Explorer requires that all file-type information provided by Web servers be consistent. For example, if the MIME type of a file is text/plain but the MIME sniff indicates that the file is really an executable file, Internet Explorer renames the file by saving it in the Internet Explorer cache and changing its extension.
# 
# If you enable this policy setting, Consistent Mime Handling is enabled for all processes.
# 
# If you disable or do not configure this policy setting, Consistent Mime Handling is prevented for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_5
  - setting: Enabled
  - policy_class: Machine
