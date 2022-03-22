# windows:SUPPORTED_Windows8_Or_IE10
#
# This policy setting allows you to configure the display of the password reveal button in password entry user experiences.
# 
# If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.
# 
# If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.
# 
# By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.
# 
# The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.
Do not display the password reveal button:
  lgpo.set:
  - name: DisablePasswordReveal
  - setting: Enabled
  - policy_class: User
