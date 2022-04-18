# SUPPORTED_IE5
#
# Prevents users from changing settings on the Advanced tab in the Internet Options dialog box.
# 
# If you enable this policy, users are prevented from changing advanced Internet settings, such as security, multimedia, and printing. Users cannot select or clear the check boxes on the Advanced tab.
# 
# If you disable this policy or do not configure it, users can select or clear settings on the Advanced tab.
# 
# If you set the "Disable the Advanced page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the Advanced page" policy removes the Advanced tab from the interface.
Disable changing Advanced page settings:
  lgpo.set:
  - name: ControlPanel_RestrictAdvanced
  - setting: Enabled
  - policy_class: User
