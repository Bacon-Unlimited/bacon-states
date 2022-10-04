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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\File_NoFileNew.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from opening a new browser window from the File menu.
# 
# If this policy is enabled, users cannot open a new browser window by clicking the File menu, pointing to the New menu, and then clicking Window. The user interface is not changed, but a new window will not be opened, and users will be informed that the command is not available.
# 
# If you disable this policy or do not configure it, users can open a new browser window from the File menu.
# 
# Caution: This policy does not prevent users from opening a new browser window by right-clicking, and then clicking the Open in New Window command. To prevent users from using the shortcut menu to open new browser windows, you should also set the "Disable Open in New Window menu option" policy, which disables this command on the shortcut menu, or the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
# 
# Note: the user will still be able to open New Tabs.
'File menu: Disable New menu option':
  lgpo.set:
  - name: File_NoFileNew
  - setting: Enabled
  - policy_class: User
