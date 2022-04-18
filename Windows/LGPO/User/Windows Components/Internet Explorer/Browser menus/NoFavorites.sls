# SUPPORTED_IE5
#
# Prevents users from adding, removing, editing or viewing the list of Favorite links.
# 
# The Favorites list is a way to store popular links for future use.
# 
# If you enable this policy, the Favorites menu is removed from the interface, and the Favorites button on the browser toolbar appears dimmed. The Add to Favorites command on the shortcut menu is disabled; when users click it, they are informed that the command is unavailable.
# 
# If you disable this policy or do not configure it, users can manage their Favorites list.
# 
# Note: If you enable this policy, users also cannot click Synchronize on the Tools menu (in Internet Explorer 6) to manage their favorite links that are set up for offline viewing.
Hide Favorites menu:
  lgpo.set:
  - name: NoFavorites
  - setting: Enabled
  - policy_class: User
