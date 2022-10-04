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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\File_NoBrowserClose.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from closing Microsoft Internet Explorer and File Explorer.
# 
# If you enable this policy, the Close command on the File menu will appear dimmed.
# 
# If you disable this policy or do not configure it, users are not prevented from closing the browser or File Explorer.
# 
# Note: The Close button in the top right corner of the program will not work; if users click the Close button, they will be informed that the command is not available.
'File menu: Disable closing the browser and Explorer windows':
  lgpo.set:
  - name: File_NoBrowserClose
  - setting: Enabled
  - policy_class: User
