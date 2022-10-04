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
# LOCATION: \User\Control Panel\Add or Remove Programs\NoAddRemovePrograms.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from using Add or Remove Programs.
# 
# This setting removes Add or Remove Programs from Control Panel and removes the Add or Remove Programs item from menus.
# 
# Add or Remove Programs lets users install, uninstall, repair, add, and remove features and components of Windows 2000 Professional and a wide variety of Windows programs. Programs published or assigned to the user appear in Add or Remove Programs.
# 
# If you disable this setting or do not configure it, Add or Remove Programs is available to all users.
# 
# When enabled, this setting takes precedence over the other settings in this folder.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Remove Add or Remove Programs:
  lgpo.set:
  - name: NoAddRemovePrograms
  - setting: Enabled
  - policy_class: User
