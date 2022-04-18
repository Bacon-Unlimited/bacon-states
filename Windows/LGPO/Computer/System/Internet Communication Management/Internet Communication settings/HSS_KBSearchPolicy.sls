# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether users can perform a Microsoft Knowledge Base search from the Help and Support Center.
# 
# The Knowledge Base is an online source of technical support information and self-help tools for Microsoft products, and is searched as part of all Help and Support Center searches with the default search options.
# 
# If you enable this policy setting, it removes the Knowledge Base section from the Help and Support Center "Set search options" page, and only Help content on the local computer is searched. 
# 
# If you disable or do not configure this policy setting, the Knowledge Base is searched if the user has a connection to the Internet and has not disabled the Knowledge Base search from the Search Options page.
Turn off Help and Support Center Microsoft Knowledge Base search:
  lgpo.set:
  - name: HSS_KBSearchPolicy
  - setting: Enabled
  - policy_class: Machine
