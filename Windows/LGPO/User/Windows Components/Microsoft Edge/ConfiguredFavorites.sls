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
