# SUPPORTED_IE5
#
# If you enable this policy, the user cannot modify the Accessibility options. All options in the "Accessibility" window on the General Tab in the Internet Options dialog box appear dimmed.
# 
# If you disable this policy or do not configure it, users can change accessibility settings, such as overriding fonts and colors on Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
Disable changing accessibility settings:
  lgpo.set:
  - name: RestrictAccessibility
  - setting: Enabled
  - policy_class: User
