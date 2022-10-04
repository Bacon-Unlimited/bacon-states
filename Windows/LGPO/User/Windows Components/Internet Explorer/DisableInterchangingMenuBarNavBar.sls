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
# LOCATION: \User\Windows Components\Internet Explorer\DisableInterchangingMenuBarNavBar.sls
#
# SUPPORTED WINDOWS OS
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
