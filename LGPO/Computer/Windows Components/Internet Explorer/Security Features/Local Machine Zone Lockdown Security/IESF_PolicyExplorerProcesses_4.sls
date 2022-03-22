# SUPPORTED_IE6SP2
#
# Internet Explorer places zone restrictions on each Web page it opens, which are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone.
# 
# Local Machine zone security applies to all local files and content processed by Internet Explorer. This feature helps to mitigate attacks where the Local Machine zone is used as an attack vector to load malicious HTML code.
# 
# If you enable this policy setting, the Local Machine zone security applies to all local files and content processed by Internet Explorer.
# 
# If you disable this policy setting, Local Machine zone security is not applied to local files or content processed by Internet Explorer.
# 
# If you do not configure this policy setting, the Local Machine zone security applies to all local files and content processed by Internet Explorer.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_4
  - setting: Enabled
  - policy_class: Machine
