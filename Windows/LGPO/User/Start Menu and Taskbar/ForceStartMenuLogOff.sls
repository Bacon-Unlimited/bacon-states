# windows:SUPPORTED_WindowsVistaTo2k
#
# This policy only applies to the classic version of the start menu and does not affect the new style start menu.
# 
# Adds the "Log Off <username>" item to the Start menu and prevents users from removing it.
# 
# If you enable this setting, the Log Off <username> item appears in the Start menu. This setting also removes the Display Logoff item from Start Menu Options. As a result, users cannot remove the Log Off <username> item from the Start Menu.
# 
# If you disable this setting or do not configure it, users can use the Display Logoff item to add and remove the Log Off item.
# 
# This setting affects the Start menu only. It does not affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del.
# 
# Note: To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab, and then, in the Start Menu Settings box, click Display Logoff.
# 
# Also, see "Remove Logoff" in User Configuration\Administrative Templates\System\Logon/Logoff.
Add Logoff to the Start Menu:
  lgpo.set:
  - name: ForceStartMenuLogOff
  - setting: Enabled
  - policy_class: User
