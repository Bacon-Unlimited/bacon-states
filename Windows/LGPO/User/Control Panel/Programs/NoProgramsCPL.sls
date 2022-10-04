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
# LOCATION: \User\Control Panel\Programs\NoProgramsCPL.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from using the Programs Control Panel in Category View and Programs and Features in Classic View.
#  
# The Programs Control Panel allows users to uninstall, change, and repair programs, enable and disable Windows Features, set program defaults, view installed updates, and purchase software from Windows Marketplace. Programs published or assigned to the user by the system administrator also appear in the Programs Control Panel.
# 
# If this setting is disabled or not configured, the Programs Control Panel in Category View and Programs and Features in Classic View will be available to all users.
# 
# When enabled, this setting takes precedence over the other settings in this folder.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Hide the Programs Control Panel:
  lgpo.set:
  - name: NoProgramsCPL
  - setting: Enabled
  - policy_class: User
