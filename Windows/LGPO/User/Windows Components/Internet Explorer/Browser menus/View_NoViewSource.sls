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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\View_NoViewSource.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from viewing the HTML source of Web pages by clicking the Source command on the View menu.
# 
# If you enable this policy, the Source command on the View menu will appear dimmed.
# 
# If you disable this policy or do not configure it, then users can view the HTML source of Web pages from the browser View menu.
# 
# Caution: This policy does not prevent users from viewing the HTML source of a Web page by right-clicking a Web page to open the shortcut menu, and then clicking View Source. To prevent users from viewing the HTML source of a Web page from the shortcut menu, set the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
'View menu: Disable Source menu option':
  lgpo.set:
  - name: View_NoViewSource
  - setting: Enabled
  - policy_class: User
