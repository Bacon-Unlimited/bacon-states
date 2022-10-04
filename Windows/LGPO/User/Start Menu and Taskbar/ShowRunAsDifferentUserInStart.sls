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
# LOCATION: \User\Start Menu and Taskbar\ShowRunAsDifferentUserInStart.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting shows or hides the "Run as different user" command on the Start application bar.
# 
# If you enable this setting, users can access the "Run as different user" command from Start for applications which support this functionality.
# 
# If you disable this setting or do not configure it, users cannot access the "Run as different user" command from Start for any applications.
# 
# Note: This setting does not prevent users from using other methods, such as the shift right-click menu on application's jumplists in the taskbar to issue the "Run as different user" command.
Show "Run as different user" command on Start:
  lgpo.set:
  - name: ShowRunAsDifferentUserInStart
  - setting: Enabled
  - policy_class: User
