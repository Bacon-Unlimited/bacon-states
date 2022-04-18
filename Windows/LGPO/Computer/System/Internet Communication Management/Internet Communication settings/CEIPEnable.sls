# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the Windows Customer Experience Improvement Program. The Windows Customer Experience Improvement Program collects information about your hardware configuration and how you use our software and services to identify trends and usage patterns. Microsoft will not collect your name, address, or any other personally identifiable information. There are no surveys to complete, no salesperson will call, and you can continue working without interruption. It is simple and user-friendly.
# 
# If you enable this policy setting, all users are opted out of the Windows Customer Experience Improvement Program.
# 
# If you disable this policy setting, all users are opted into the Windows Customer Experience Improvement Program.
# 
# If you do not configure this policy setting, the administrator can use the Problem Reports and Solutions component in Control Panel to enable Windows Customer Experience Improvement Program for all users.
Turn off Windows Customer Experience Improvement Program:
  lgpo.set:
  - name: CEIPEnable
  - setting: Enabled
  - policy_class: Machine
