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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\NoOpeninNewWnd.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents using the shortcut menu to open a link in a new browser window.
# 
# If you enable this policy, users cannot point to a link, click the right mouse button, and then click the Open in New Window command.
# 
# If you disable this policy or do not configure it, users can open a Web page in a new browser window by using the shortcut menu.
# 
# This policy can be used in coordination with the "File menu: Disable New menu option" policy, which prevents users from opening the browser in a new window by clicking the File menu, pointing to New, and then clicking Window.
# 
# Note: When users click the Open in New Window command, the link will not open in a new window and they will be informed that the command is not available.
Disable Open in New Window menu option:
  lgpo.set:
  - name: NoOpeninNewWnd
  - setting: Enabled
  - policy_class: User
