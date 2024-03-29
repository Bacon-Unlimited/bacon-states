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
# LOCATION: \User\Start Menu and Taskbar\ClearRecentDocsOnExit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Clear history of recently opened documents on exit.
# 
# If you enable this setting, the system deletes shortcuts to recently used document files when the user logs off. As a result, the Recent Items menu on the Start menu is always empty when the user logs on. In addition, recently and frequently used items in the Jump Lists off of programs in the Start Menu and Taskbar will be cleared when the user logs off.
# 
# If you disable or do not configure this setting, the system retains document shortcuts, and when a user logs on, the Recent Items menu and the Jump Lists appear just as it did when the user logged off.
# 
# Note: The system saves document shortcuts in the user profile in the System-drive\Users\User-name\Recent folder.
# 
# Also, see the "Remove Recent Items menu from Start Menu" and "Do not keep history of recently opened documents" policies in this folder. The system only uses this setting when neither of these related settings are selected.
# 
# This setting does not clear the list of recent files that Windows programs display at the bottom of the File menu. See the "Do not keep history of recently opened documents" setting.
# 
# This policy setting also does not hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.
# 
# This policy also does not clear items that the user may have pinned to the Jump Lists, or Tasks that the application has provided for their menu. See the "Do not allow pinning items in Jump Lists" setting.
Clear history of recently opened documents on exit:
  lgpo.set:
  - name: ClearRecentDocsOnExit
  - setting: Enabled
  - policy_class: User
