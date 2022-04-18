# SUPPORTED_IE10
#
# This policy setting allows you to hide the reveal password button when Internet Explorer prompts users for a password. The reveal password button is displayed during password entry. When the user clicks the button, the current password value is visible until the mouse button is released (or until the tap ends).
# 
# If you enable this policy setting, the reveal password button will be hidden for all password fields. Users and developers will not be able to depend on the reveal password button being displayed in any web form or web application.
# 
# If you disable or do not configure this policy setting, the reveal password button can be shown by the application as a user types in a password. The reveal password button is visible by default.
# 
# On at least Windows 8, if the "Do not display the reveal password button" policy setting located in Computer Configuration\Administrative Templates\Windows Components\Credential User Interface is enabled for the system, it will override this policy setting.
Do not display the reveal password button:
  lgpo.set:
  - name: IESF_DisablePasswordRevealButton
  - setting: Enabled
  - policy_class: Machine
