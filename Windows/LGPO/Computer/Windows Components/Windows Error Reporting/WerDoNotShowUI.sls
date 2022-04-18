# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents the display of the user interface for critical errors.
# 
# If you enable or do not configure this policy setting, Windows Error Reporting does not display any GUI-based error messages or dialog boxes for critical errors.
# 
# If you disable this policy setting, Windows Error Reporting displays the GUI-based error messages or dialog boxes for critical errors.
Prevent display of the user interface for critical errors:
  lgpo.set:
  - name: WerDoNotShowUI
  - setting: Enabled
  - policy_class: Machine
