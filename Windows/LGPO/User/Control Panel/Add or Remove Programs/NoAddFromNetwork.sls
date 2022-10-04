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
# LOCATION: \User\Control Panel\Add or Remove Programs\NoAddFromNetwork.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from viewing or installing published programs.
# 
# This setting removes the "Add programs from your network" section from the Add New Programs page. The "Add programs from your network" section lists published programs and provides an easy way to install them.
# 
# Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users that the programs are available, to recommend their use, or to enable users to install them without having to search for installation files.
# 
# If you enable this setting, users cannot tell which programs have been published by the system administrator, and they cannot use Add or Remove Programs to install published programs. However, they can still install programs by using other methods, and they can view and install assigned (partially installed) programs that are offered on the desktop or on the Start menu.
# 
# If you disable this setting or do not configure it, "Add programs from your network" is available to all users.
# 
# Note: If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
Hide the "Add programs from your network" option:
  lgpo.set:
  - name: NoAddFromNetwork
  - setting: Enabled
  - policy_class: User
