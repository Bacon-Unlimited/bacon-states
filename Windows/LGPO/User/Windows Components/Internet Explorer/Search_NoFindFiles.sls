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
# LOCATION: \User\Windows Components\Internet Explorer\Search_NoFindFiles.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_6
#
# Disables using the F3 key to search in Internet Explorer and File Explorer.
# 
# If you enable this policy, the search functionality of the F3 key is disabled. Users cannot press F3 to search the Internet (from Internet Explorer) or to search the hard disk (from File Explorer). If the user presses F3, a prompt appears that informs the user that this feature has been disabled.
# 
# If you disable this policy or do not configure it, users can press F3 to search the Internet (from Internet Explorer) or the hard disk (from File Explorer).
# 
# This policy is intended for situations in which administrators do not want users to explore the Internet or the hard disk.
# 
# This policy can be used in coordination with the "File Menu: Disable Open menu option" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Browser Menus), which prevents users from opening files by using the browser.
'Search: Disable Find Files via F3 within the browser':
  lgpo.set:
  - name: Search_NoFindFiles
  - setting: Enabled
  - policy_class: User
