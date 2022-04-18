# SUPPORTED_IE5
#
# Removes the Advanced tab from the interface in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from seeing and changing advanced Internet settings, such as security, multimedia, and printing.
# 
# If you disable this policy or do not configure it, users can see and change these settings.
# 
# When you set this policy, you do not need to set the "Disable changing Advanced page settings" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\), because this policy removes the Advanced tab from the interface.
Disable the Advanced page:
  lgpo.set:
  - name: ControlPanel_RestrictAdvancedTab
  - setting: Enabled
  - policy_class: User
