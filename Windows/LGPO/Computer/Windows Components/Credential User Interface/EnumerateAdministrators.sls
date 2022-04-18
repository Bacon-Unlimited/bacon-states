# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.
# 
# If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.
# 
# If you disable this policy setting, users will always be required to type a user name and password to elevate.
Enumerate administrator accounts on elevation:
  lgpo.set:
  - name: EnumerateAdministrators
  - setting: Enabled
  - policy_class: Machine
