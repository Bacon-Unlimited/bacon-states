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
# LOCATION: \Computer\System\Do_not_display_Manage_Your_Server_page.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to turn off the automatic display of the Manage Your Server page. 
# 
# If you enable this policy setting, the Manage Your Server page is not displayed each time an administrator logs on to the server. 
# 
# If you disable or do not configure this policy setting, the Manage Your Server page is displayed each time an administrator logs on to the server. However, if the administrator has selected the "Dont display this page at logon" option at the bottom of the Manage Your Server page, the page is not displayed.
# 
Do not display Manage Your Server page at logon:
  lgpo.set:
  - name: Do_not_display_Manage_Your_Server_page
  - setting: Enabled
  - policy_class: Machine
