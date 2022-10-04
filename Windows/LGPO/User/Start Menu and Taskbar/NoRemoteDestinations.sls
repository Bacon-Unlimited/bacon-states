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
# LOCATION: \User\Start Menu and Taskbar\NoRemoteDestinations.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control displaying or tracking items in Jump Lists from remote locations.
# 
# The Start Menu and Taskbar display Jump Lists off of programs. These menus include files, folders, websites and other relevant items for that program. This helps users more easily reopen their most important documents and other tasks.
# 
# If you enable this policy setting, the Start Menu and Taskbar only track the files that the user opens locally on this computer. Files that the user opens over the network from remote computers are not tracked or shown in the Jump Lists. Use this setting to reduce network traffic, particularly over slow network connections.
# 
# If you disable or do not configure this policy setting, all files that the user opens appear in the menus, including files located remotely on another computer.
# 
# Note: This setting does not prevent Windows from displaying remote files that the user has explicitly pinned to the Jump Lists. See the ""Do not allow pinning items in Jump Lists"" policy setting.
Do not display or track items in Jump Lists from remote locations:
  lgpo.set:
  - name: NoRemoteDestinations
  - setting: Enabled
  - policy_class: User
