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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\ShellNoUseInternetOpenWith_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToXP
#
# This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.
# 
# When a user opens a file that has an extension that is not associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.
# 
# If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.
# 
# If you disable or do not configure this policy setting, the user is allowed to use the Web service.
Turn off Internet File Association service:
  lgpo.set:
  - name: ShellNoUseInternetOpenWith_2
  - setting: Enabled
  - policy_class: Machine
