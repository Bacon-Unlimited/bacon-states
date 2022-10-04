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
# LOCATION: \User\Start Menu and Taskbar\NoPinningToDestinations.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control pinning items in Jump Lists.
# 
# If you enable this policy setting, users cannot pin files, folders, websites, or other items to their Jump Lists in the Start Menu and Taskbar. Users also cannot unpin existing items pinned to their Jump Lists. Existing items already pinned to their Jump Lists will continue to show.
# 
# If you disable or do not configure this policy setting, users can pin files, folders, websites, and other items to a program's Jump List so that the items is always present in this menu.
# 
Do not allow pinning items in Jump Lists:
  lgpo.set:
  - name: NoPinningToDestinations
  - setting: Enabled
  - policy_class: User
