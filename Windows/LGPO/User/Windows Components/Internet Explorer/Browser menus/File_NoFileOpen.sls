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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\File_NoFileOpen.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from opening a file or Web page from the File menu in Internet Explorer.
# 
# If you enable this policy, the Open dialog box will not appear when users click the Open command on the File menu. If users click the Open command, they will be notified that the command is not available.
# 
# If you disable this policy or do not configure it, users can open a Web page from the browser File menu.
# 
# Caution: This policy does not prevent users from right-clicking a link on a Web page, and then clicking the Open or Open in New Window command. To prevent users from opening Web pages by using the shortcut menu, set the "Disable Open in New Window menu option" policy, which disables this command on the shortcut menu, or the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
'File menu: Disable Open menu option':
  lgpo.set:
  - name: File_NoFileOpen
  - setting: Enabled
  - policy_class: User
