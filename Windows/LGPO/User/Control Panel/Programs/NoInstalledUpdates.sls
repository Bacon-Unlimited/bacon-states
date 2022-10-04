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
# LOCATION: \User\Control Panel\Programs\NoInstalledUpdates.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from accessing "Installed Updates" page from the "View installed updates" task.
# 
# "Installed Updates" allows users to view and uninstall updates currently installed on the computer.  The updates are often downloaded directly from Windows Update or from various program publishers.
# 
# If this setting is disabled or not configured, the "View installed updates" task and the "Installed Updates" page will be available to all users.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Hide "Installed Updates" page:
  lgpo.set:
  - name: NoInstalledUpdates
  - setting: Enabled
  - policy_class: User
