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
# LOCATION: \User\Control Panel\Programs\NoProgramsAndFeatures.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from accessing "Programs and Features" to view, uninstall, change, or repair programs that are currently installed on the computer.
# 
# If this setting is disabled or not configured, "Programs and Features" will be available to all users.
# 
# This setting does not prevent users from using other tools and methods to view or uninstall programs.  It also does not prevent users from linking to related Programs Control Panel Features including Windows Features, Get Programs, or Windows Marketplace.
Hide "Programs and Features" page:
  lgpo.set:
  - name: NoProgramsAndFeatures
  - setting: Enabled
  - policy_class: User
