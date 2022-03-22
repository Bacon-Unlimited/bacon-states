# windows:SUPPORTED_Windows7
#
# Sets the target of the More Information link that will be displayed when the user attempts to run a program that is blocked by policy.
Set a support web page link:
  lgpo.set:
  - name: AdminInfoUrl
  - setting:
      AdminInfoUrl_TextBox: text-placeholder
  - policy_class: Machine
