# SUPPORTED_IE7
#
# This policy setting allows you to turn off the toolbar upgrade tool. The toolbar upgrade tool determines whether incompatible toolbars or Browser Helper Objects are installed when Internet Explorer starts. If the tool detects an incompatible toolbar, the user is prompted to update or disable the toolbar. Specific toolbars or Browser Helper Objects that are enabled or disabled via policy settings do not undergo this check.
# 
# If you enable this policy setting, the toolbar upgrade tool does not check for incompatible toolbars. The user is not prompted, and incompatible toolbars run unless previously disabled through policy settings or user choice.
# 
# If you disable or do not configure this policy setting, the toolbar upgrade tool checks for incompatible toolbars. The user can enable or disable incompatible toolbars. Toolbars that are enabled or disabled via policy settings do not undergo these checks.
Turn off toolbar upgrade tool:
  lgpo.set:
  - name: DisableToolbarUpgrader
  - setting: Enabled
  - policy_class: User
