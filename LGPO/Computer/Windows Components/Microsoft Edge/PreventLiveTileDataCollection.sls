# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy lets you decide whether Microsoft Edge can gather Live Tile metadata from the ieonline.microsoft.com service to provide a better experience while pinning a Live Tile to the Start menu.
# 
# If you enable this setting, Microsoft Edge won't gather the Live Tile metadata, providing a minimal experience when a user pins a Live Tile to the Start menu.
# 
# If you disable or don't configure this setting, Microsoft Edge gathers the Live Tile metadata, providing a fuller and more complete experience when a user pins a Live Tile to the Start menu.
Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start:
  lgpo.set:
  - name: PreventLiveTileDataCollection
  - setting: Enabled
  - policy_class: Machine
