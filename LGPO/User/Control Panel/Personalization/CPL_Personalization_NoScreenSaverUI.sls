# windows:SUPPORTED_Win2k
#
# Prevents the Screen Saver dialog from opening in the Personalization or Display Control Panel.
#       
# This setting prevents users from using Control Panel to add, configure, or change the screen saver on the computer. It does not prevent a screen saver from running.
#       
Prevent changing screen saver:
  lgpo.set:
  - name: CPL_Personalization_NoScreenSaverUI
  - setting: Enabled
  - policy_class: User
