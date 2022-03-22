# WU_SUPPORTED_Windows7ToXPSP2
#
# This policy setting allows you to manage whether the 'Install Updates and Shut Down' option is displayed in the Shut Down Windows dialog box.
# 
# If you enable this policy setting, 'Install Updates and Shut Down' will not appear as a choice in the Shut Down Windows dialog box, even if updates are available for installation when the user selects the Shut Down option in the Start menu.
# 
# If you disable or do not configure this policy setting, the 'Install Updates and Shut Down' option will be available in the Shut Down Windows dialog box if updates are available when the user selects the Shut Down option in the Start menu.
Do not display 'Install Updates and Shut Down' option in Shut Down Windows dialog box:
  lgpo.set:
  - name: AUDontShowUasPolicy
  - setting: Enabled
  - policy_class: Machine
