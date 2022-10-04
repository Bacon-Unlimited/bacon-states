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
# LOCATION: \Computer\Windows Components\Internet Explorer\EnforceFullscreen.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to enforce full-screen mode, which disables the navigation bar, the menu bar, and the Command bar. Starting with Windows 8, this policy only applies to Internet Explorer on the desktop.
# 
# The navigation bar includes features for browsing webpages, searching the web by using a selection of search tools, viewing a history of visited pages, printing, and accessing email and newsgroups. The menu bar contains menus that open lists of commands for printing, customizing Internet Explorer, copying and pasting text, managing favorites, and accessing Help. The Command bar enables the user to access and manage favorites, feeds, shortcuts to home page, and more. Full-screen mode disables not only these three bars, but also the shortcuts to these bars.
# 
# If you enable this policy setting, the navigation bar, the menu bar, and the Command bar are not visible, and the user cannot access them.
# 
# If you disable or do not configure this policy setting, the user can view and access the navigation bar, the menu bar, and the Command bar.
Enforce full-screen mode:
  lgpo.set:
  - name: EnforceFullscreen
  - setting: Enabled
  - policy_class: Machine
