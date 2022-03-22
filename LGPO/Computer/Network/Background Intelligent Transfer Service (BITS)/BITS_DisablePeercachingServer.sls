# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether the computer will act as a BITS peer caching server. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).
# 
#           If you enable this policy setting, the computer will no longer cache downloaded files and offer them to its peers. However, the computer will still download files from peers.
# 
#           If you disable or do not configure this policy setting, the computer will offer downloaded and cached files to its peers.
# 
#           Note: This setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.
Do not allow the computer to act as a BITS Peercaching server:
  lgpo.set:
  - name: BITS_DisablePeercachingServer
  - setting: Enabled
  - policy_class: Machine
