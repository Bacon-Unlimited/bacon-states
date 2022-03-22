# windows:SUPPORTED_Windows_10_0_RS6
#
# If you turn this policy setting on, local users won’t be able to set up and use security questions to reset their passwords.
Prevent the use of security questions for local accounts:
  lgpo.set:
  - name: NoLocalPasswordResetQuestions
  - setting: Enabled
  - policy_class: Machine
