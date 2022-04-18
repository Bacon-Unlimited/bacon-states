# SUPPORTED_IE6SP2
#
# Internet Explorer places restrictions on each Web page it opens. The restrictions are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone, making the Local Machine security zone a prime target for malicious users. Zone Elevation also disables JavaScript navigation if there is no security context.
# 
# If you enable this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.
# 
# If you disable this policy setting, no zone receives such protection for Internet Explorer processes.
# 
# If you do not configure this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_9
  - setting: Enabled
  - policy_class: User
