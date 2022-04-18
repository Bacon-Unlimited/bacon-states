# SUPPORTED_IE6SP2
#
# Internet Explorer places zone restrictions on each Web page it opens, which are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone.
# 
# Local Machine zone security applies to all local files and content. This feature helps to mitigate attacks where the Local Machine zone is used as an attack vector to load malicious HTML code.
# 
# If you enable this policy setting, the Local Machine zone security applies to all local files and content processed by any process other than Internet Explorer or those defined in a process list.
# 
# If you disable or do not configure this policy setting, Local Machine zone security is not applied to local files or content processed by any process other than Internet Explorer or those defined in a process list.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_4
  - setting: Enabled
  - policy_class: Machine
