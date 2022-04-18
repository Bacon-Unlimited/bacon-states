# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether Search Companion should automatically download content updates during local and Internet searches.
# 
# When users search the local computer or the Internet, Search Companion occasionally connects to Microsoft to download an updated privacy policy and additional content files used to format and display results.
# 
# If you enable this policy setting, Search Companion does not download content updates during searches.
# 
# If you disable or do not configure this policy setting, Search Companion downloads content updates unless the user is using Classic Search.
# 
# Note: Internet searches still send the search text and information about the search to Microsoft and the chosen search provider. Choosing Classic Search turns off the Search Companion feature completely.
Turn off Search Companion content file updates:
  lgpo.set:
  - name: SearchCompanion_DisableFileUpdates
  - setting: Enabled
  - policy_class: Machine
