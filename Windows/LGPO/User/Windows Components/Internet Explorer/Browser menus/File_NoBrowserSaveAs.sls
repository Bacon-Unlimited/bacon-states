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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\File_NoBrowserSaveAs.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from saving Web pages from the browser File menu to their hard disk or to a network share.
# 
# If you enable this policy, the Save As command on the File menu will be removed.
# 
# If you disable this policy or do not configure it, users can save Web pages for later viewing.
# 
# This policy takes precedence over the "File Menu: Disable Save As Web Page Complete" policy, which prevents users from saving the entire contents that are displayed or run from a Web Page, such as graphics, scripts, and linked files, but does not prevent users from saving the text of a Web page.
# 
# Caution: If you enable this policy, users are not prevented from saving Web content by pointing to a link on a Web page, clicking the right mouse button, and then clicking Save Target As.
'File menu: Disable Save As... menu option':
  lgpo.set:
  - name: File_NoBrowserSaveAs
  - setting: Enabled
  - policy_class: User
