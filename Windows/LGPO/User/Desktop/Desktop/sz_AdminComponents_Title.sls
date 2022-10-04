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
# LOCATION: \User\Desktop\Desktop\sz_AdminComponents_Title.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Adds and deletes specified Web content items.
# 
# You can use the "Add" box in this setting to add particular Web-based items or shortcuts to users' desktops. Users can close or delete the items (if settings allow), but the items are added again each time the setting is refreshed.
# 
# You can also use this setting to delete particular Web-based items from users' desktops. Users can add the item again (if settings allow), but the item is deleted each time the setting is refreshed.
# 
# Note: Removing an item from the "Add" list for this setting is not the same as deleting it. Items that are removed from the "Add" list are not removed from the desktop. They are simply not added again.
# 
# Note: For this setting to take affect, you must log off and log on to the system.
Add/Delete items:
  lgpo.set:
  - name: sz_AdminComponents_Title
  - setting:
      sz_ATC_AdminAddItem: text-placeholder
      sz_ATC_AdminDeleteItem: text-placeholder
  - policy_class: User
