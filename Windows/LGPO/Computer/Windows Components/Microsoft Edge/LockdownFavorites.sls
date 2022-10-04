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
# LOCATION: \Computer\Windows Components\Microsoft Edge\LockdownFavorites.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10RS3RELEASE
#
# This policy setting lets you decide whether employees can add, import, sort, or edit the Favorites list on Microsoft Edge.
# 
# If you enable this setting, employees won't be able to add, import, or change anything in the Favorites list. Also as part of this, Save a Favorite, Import settings, and the context menu items (such as, Create a new folder) are all turned off.
# 
# Important
# Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.
# 
# If you disable or don't configure this setting (default), employees can add, import and make changes to the Favorites list.
Prevent changes to Favorites on Microsoft Edge:
  lgpo.set:
  - name: LockdownFavorites
  - setting: Enabled
  - policy_class: Machine
