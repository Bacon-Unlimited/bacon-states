# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to configure client computers to lock and prompt for a password when resuming from a hibernate or suspend state.
# 
# If you enable this policy setting, the client computer is locked and prompted for a password when it is resumed from a suspend or hibernate state.
# 
# If you disable or do not configure this policy setting, users control if their computer is automatically locked or not after performing a resume operation.
Prompt for password on resume from hibernate/suspend:
  lgpo.set:
  - name: PW_PromptPasswordOnResume
  - setting: Enabled
  - policy_class: User
