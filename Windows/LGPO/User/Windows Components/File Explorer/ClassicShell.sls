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
# LOCATION: \User\Windows Components\File Explorer\ClassicShell.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaTo2k
#
# This setting allows an administrator to revert specific Windows Shell behavior to classic Shell behavior.
# 
# If you enable this setting, users cannot configure their system to open items by single-clicking (such as in Mouse in Control Panel). As a result, the user interface looks and operates like the interface for Windows NT 4.0, and users cannot restore the new features.
# Enabling this policy will also turn off the preview pane and set the folder options for File Explorer to Use classic folders view and disable the users ability to change these options.
# 
# If you disable or not configure this policy, the default File Explorer behavior is applied to the user.
# 
# Note: In operating systems earlier than Windows Vista, enabling this policy will also disable the Active Desktop and Web view. This setting will also take precedence over the "Enable Active Desktop" setting. If both policies are enabled, Active Desktop is disabled.
# 
# Also, see the "Disable Active Desktop" setting in User Configuration\Administrative Templates\Desktop\Active Desktop and the "Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon" setting in User Configuration\Administrative Templates\Windows Components\File Explorer.
Turn on Classic Shell:
  lgpo.set:
  - name: ClassicShell
  - setting: Enabled
  - policy_class: User
