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
# LOCATION: \Computer\Start Menu and Taskbar\NoRecentDocsHistory.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents the operating system and installed programs from creating and displaying shortcuts to recently opened documents.
# 
# If you enable this setting, the system and Windows programs do not create shortcuts to documents opened while the setting is in effect. Also, they retain but do not display existing document shortcuts. The system empties the Recent Items menu on the Start menu, and Windows programs do not display shortcuts at the bottom of the File menu. In addition, the Jump Lists off of programs in the Start Menu and Taskbar do not show lists of recently or frequently used files, folders, or websites.
# 
# If you disable or do not configure this setting, the system will store and display shortcuts to recently and frequently used files, folders, and websites.
# 
# Note: The system saves document shortcuts in the user profile in the System-drive\Users\User-name\Recent folder.
# 
# Also, see the "Remove Recent Items menu from Start Menu" and "Clear history of recently opened documents on exit" policies in this folder.
# 
# If you enable this setting but do not enable the "Remove Recent Items menu from Start Menu" setting, the Recent Items menu appears on the Start menu, but it is empty.
# 
# If you enable this setting, but then later disable it or set it to Not Configured, the document shortcuts saved before the setting was enabled reappear in the Recent Items menu and program File menus, and Jump Lists.
# 
# This setting does not hide or prevent the user from pinning files, folders, or websites to the Jump Lists. See the "Do not allow pinning items in Jump Lists" setting. This policy also does not hide Tasks that the application has provided for their Jump List. This setting does not hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Do not keep history of recently opened documents:
  lgpo.set:
  - name: NoRecentDocsHistory
  - setting: Enabled
  - policy_class: Machine
