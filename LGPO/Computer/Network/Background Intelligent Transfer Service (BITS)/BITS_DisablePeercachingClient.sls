# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether the computer will act as a BITS peer caching client. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).
# 
#           If you enable this policy setting, the computer will no longer use the BITS peer caching feature to download files; files will be downloaded only from the origin server. However, the computer will still make files available to its peers.
# 
#           If you disable or do not configure this policy setting, the computer attempts to download peer-enabled BITS jobs from peer computers before reverting to the origin server.
# 
#           Note: This policy setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.
Do not allow the computer to act as a BITS Peercaching client:
  lgpo.set:
  - name: BITS_DisablePeercachingClient
  - setting: Enabled
  - policy_class: Machine
