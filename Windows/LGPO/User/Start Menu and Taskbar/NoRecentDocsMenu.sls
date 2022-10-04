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
# LOCATION: \User\Start Menu and Taskbar\NoRecentDocsMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7To2k
#
# Removes the Recent Items menu from the Start menu.  Removes the Documents menu from the classic Start menu.
# 
# The Recent Items menu contains links to the non-program files that users have most recently opened. It appears so that users can easily reopen their documents.
# 
# If you enable this setting, the system saves document shortcuts but does not display the Recent Items menu in the Start Menu, and users cannot turn the menu on.
# 
# If you later disable the setting, so that the Recent Items menu appears in the Start Menu, the document shortcuts saved before the setting was enabled and while it was in effect appear in the Recent Items menu.
# 
# When the setting is disabled, the Recent Items menu appears in the Start Menu, and users cannot remove it.
# 
# If the setting is not configured, users can turn the Recent Items menu on and off.
# 
# Note: This setting does not prevent Windows programs from displaying shortcuts to recently opened documents. See the "Do not keep history of recently opened documents" setting.
# 
# This setting also does not hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.
Remove Recent Items menu from Start Menu:
  lgpo.set:
  - name: NoRecentDocsMenu
  - setting: Enabled
  - policy_class: User
