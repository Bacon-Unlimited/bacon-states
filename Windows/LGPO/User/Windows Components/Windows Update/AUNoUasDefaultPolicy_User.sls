# WU_SUPPORTED_Windows7ToXPSP2
#
# This policy setting allows you to manage whether the 'Install Updates and Shut Down' option is allowed to be the default choice in the Shut Down Windows dialog.
# 
# If you enable this policy setting, the user's last shut down choice (Hibernate, Restart, etc.) is the default option in the Shut Down Windows dialog box, regardless of whether the 'Install Updates and Shut Down' option is available in the 'What do you want the computer to do?' list.
# 
# If you disable or do not configure this policy setting, the 'Install Updates and Shut Down' option will be the default option in the Shut Down Windows dialog box if updates are available for installation at the time the user selects the Shut Down option in the Start menu.
# 
# Note that this policy setting has no impact if the User Configuration\Administrative Templates\Windows Components\Windows Update\Do not display 'Install Updates and Shut Down' option in Shut Down Windows dialog box policy setting is enabled.
Do not adjust default option to 'Install Updates and Shut Down' in Shut Down Windows dialog box:
  lgpo.set:
  - name: AUNoUasDefaultPolicy_User
  - setting: Enabled
  - policy_class: User
