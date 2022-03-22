# SUPPORTED_IE6SP2
#
# Internet Explorer places restrictions on each Web page it opens. The restrictions are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, and so on). For example, Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone, making the Local Machine security zone a prime target for malicious users.
# 
# If you enable this policy setting, any zone can be protected from zone elevation for all processes.
# 
# If you disable or do not configure this policy setting, processes other than Internet Explorer or those listed in the Process List receive no such protection.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_9
  - setting: Enabled
  - policy_class: User
