# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether the "Order Prints Online" task is available from Picture Tasks in Windows folders.
# 
# The Order Prints Online Wizard is used to download a list of providers and allow users to order prints online.
# 
# If you enable this policy setting, the task "Order Prints Online" is removed from Picture Tasks in File Explorer folders.
# 
# If you disable or do not configure this policy setting, the task is displayed.
Turn off the "Order Prints" picture task:
  lgpo.set:
  - name: ShellRemoveOrderPrints_1
  - setting: Enabled
  - policy_class: User
