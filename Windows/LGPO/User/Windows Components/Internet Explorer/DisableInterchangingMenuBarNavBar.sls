# SUPPORTED_IE7_8
#
# This policy setting positions the menu bar above the navigation bar. The navigation bar contains icons for a variety of features, including browsing web pages, searching the web by using a selection of search tools, accessing and managing favorites, viewing a history of visited pages, printing, and accessing email and newsgroups. The menu bar contains menus that open lists of commands. The commands include options for printing, customizing Internet Explorer, copying and pasting text, managing favorites, and accessing Help.
# 
# If you enable this policy setting, the menu bar is above the navigation bar. The user cannot interchange the positions of the menu bar and the navigation bar.
# 
# If you disable this policy setting, the menu bar is below the navigation bar. The user cannot interchange the positions of the menu bar and the navigation bar.
# 
# If you do not configure this policy setting, the user can interchange the positions of the menu bar and the navigation bar.
Position the menu bar above the navigation bar:
  lgpo.set:
  - name: DisableInterchangingMenuBarNavBar
  - setting: Enabled
  - policy_class: User
