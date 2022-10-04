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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\NoFavorites.sls
#
# SUPPORTED WINDOWS OS
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
