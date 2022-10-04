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
# LOCATION: \User\Windows Components\Microsoft Edge\ConfiguredFavorites.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10RS3RELEASE
#
# This policy setting allows you to configure a default set of favorites, which will appear for employees. Employees cannot modify, sort, move, export or delete these provisioned favorites.
# 
# If you enable this setting, you can set favorite URL's and favorite folders to appear on top of users' favorites list (either in the Hub or Favorites Bar). The user favorites will appear after these provisioned favorites.
# 
# Important
# Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.
# 
# If you disable or don't configure this setting, employees will see the favorites they set in the Hub and Favorites Bar.
Provision Favorites:
  lgpo.set:
  - name: ConfiguredFavorites
  - setting:
      ConfiguredFavoritesPrompt: text-placeholder
  - policy_class: User
