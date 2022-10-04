####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Windows Components\Microsoft Edge\PreventLiveTileDataCollection.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: User
