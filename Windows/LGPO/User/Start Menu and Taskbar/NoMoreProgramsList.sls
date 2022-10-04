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
# LOCATION: \User\Start Menu and Taskbar\NoMoreProgramsList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# If you enable this setting, the Start Menu will either collapse or remove the all apps list from the Start menu.
# 
# Selecting "Collapse" will not display the app list next to the pinned tiles in Start. An "All apps" button will be displayed on Start to open the all apps list. This is equivalent to setting the "Show app list in Start" in Settings to Off.
# 
# Selecting "Collapse and disable setting" will do the same as the collapse option and disable the "Show app list in Start menu" in Settings, so users cannot turn it to On.
# 
# Selecting "Remove and disable setting" will remove the all apps list from Start and disable the "Show app list in Start menu" in Settings, so users cannot turn it to On. Select this option for compatibility with earlier versions of Windows.
# 
# If you disable or do not configure this setting, the all apps list will be visible by default, and the user can change "Show app list in Start" in Settings.
Remove All Programs list from the Start menu:
  lgpo.set:
  - name: NoMoreProgramsList
  - setting:
      NoMoreProgramsListDropdown: enum-placeholder
  - policy_class: User
