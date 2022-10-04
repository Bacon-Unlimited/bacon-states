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
# LOCATION: \User\Start Menu and Taskbar\AddSearchInternetLinkInStartMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7Only
#
# 
# If you enable this policy, a "Search the Internet" link is shown when the user performs a search in the start menu search box.  This button launches the default browser with the search terms.
# 
# If you disable this policy, there will not be a "Search the Internet" link when the user performs a search in the start menu search box.
#           
# If you do not configure this policy (default), there will not be a "Search the Internet" link on the start menu.
Add Search Internet link to Start Menu:
  lgpo.set:
  - name: AddSearchInternetLinkInStartMenu
  - setting: Enabled
  - policy_class: User
