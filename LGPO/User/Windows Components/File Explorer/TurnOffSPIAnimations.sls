# windows:SUPPORTED_WindowsVista
#
# This policy is similar to settings directly available to computer users.  Disabling animations can improve usability for users with some visual disabilities as well as improving performance and battery life in some scenarios.
Turn off common control and window animations:
  lgpo.set:
  - name: TurnOffSPIAnimations
  - setting: Enabled
  - policy_class: User
