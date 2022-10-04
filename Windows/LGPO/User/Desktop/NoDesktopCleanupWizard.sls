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
# LOCATION: \User\Desktop\NoDesktopCleanupWizard.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPOrServerOnly
#
# Prevents users from using the Desktop Cleanup Wizard.
# 
# If you enable this setting, the Desktop Cleanup wizard does not automatically run on a users workstation every 60 days. The user will also not be able to access the Desktop Cleanup Wizard.
# 
# If you disable this setting or do not configure it, the default behavior of the Desktop Clean Wizard running every 60 days occurs.
# 
# Note: When this setting is not enabled, users can run the Desktop Cleanup Wizard, or have it run automatically every 60 days from Display, by clicking the Desktop tab and then clicking the Customize Desktop button.
Remove the Desktop Cleanup Wizard:
  lgpo.set:
  - name: NoDesktopCleanupWizard
  - setting: Enabled
  - policy_class: User
