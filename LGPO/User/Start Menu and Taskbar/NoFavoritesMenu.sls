# windows:SUPPORTED_Windows7To2k
#
# Prevents users from adding the Favorites menu to the Start menu or classic Start menu.
# 
# If you enable this setting, the Display Favorites item does not appear in the Advanced Start menu options box.
# 
# If you disable or do not configure this setting, the Display Favorite item is available.
# 
# Note:The Favorities menu does not appear on the Start menu by default. To display the Favorites menu, right-click Start, click Properties, and then click Customize.  If you are using Start menu, click the Advanced tab, and then, under Start menu items, click the Favorites menu. If you are using the classic Start menu, click Display Favorites under Advanced Start menu options.
# 
# Note:The items that appear in the Favorites menu when you install Windows are preconfigured by the system to appeal to most users. However, users can add and remove items from this menu, and system administrators can create a customized Favorites menu for a user group.
# 
# Note:This setting only affects the Start menu. The Favorites item still appears in File Explorer and in Internet Explorer.
Remove Favorites menu from Start Menu:
  lgpo.set:
  - name: NoFavoritesMenu
  - setting: Enabled
  - policy_class: User
