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
# LOCATION: \User\Start Menu and Taskbar\StartMenuLogOff.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows you to removes the "Log Off <username>" item from the Start menu and prevents users from restoring it.
# 
# If you enable this policy setting, the Log Off <username> item does not appear in the Start menu. This policy setting also removes the Display Logoff item from Start Menu Options. As a result, users cannot restore the Log Off <username> item to the Start Menu.
# 
# If you disable or do not configure this policy setting, users can use the Display Logoff item to add and remove the Log Off item.
# 
# This policy setting affects the Start menu only. It does not affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del, and it does not prevent users from using other methods to log off.
# 
# Tip: To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab and, in the Start Menu Settings box, click Display Logoff.
# 
# See also: "Remove Logoff" policy setting in User Configuration\Administrative Templates\System\Logon/Logoff.
Remove Logoff on the Start Menu:
  lgpo.set:
  - name: StartMenuLogOff
  - setting: Enabled
  - policy_class: User
