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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\Tools_Menu.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from opening the Internet Options dialog box from the Tools menu in Microsoft Internet Explorer.
# 
# If you enable this policy, users cannot change their Internet options, such as default home page, cache size, and connection and proxy settings, from the browser Tools menu. When users click the Internet Options command on the Tools menu, they are informed that the command is unavailable.
# 
# If you disable this policy or do not configure it, users can change their Internet settings from the browser Tools menu.
# 
# Caution: This policy does not prevent users from viewing and changing Internet settings by clicking the Internet Options icon in Windows Control Panel.
# 
# Also, see policies for Internet options in the \Administrative Templates\Windows Components\Internet Explorer and in \Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel folders.
'Tools menu: Disable Internet Options... menu option':
  lgpo.set:
  - name: Tools_Menu
  - setting: Enabled
  - policy_class: User
