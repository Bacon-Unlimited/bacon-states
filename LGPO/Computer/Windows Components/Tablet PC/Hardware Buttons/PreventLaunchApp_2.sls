# windows:SUPPORTED_WindowsVista
#
# Prevents the user from launching an application from a Tablet PC hardware button.
# 
# If you enable this policy, applications cannot be launched from a hardware button, and "Launch an application" is removed from the drop down menu for configuring button actions (in the Tablet PC Control Panel buttons tab).
# 
# If you disable this policy, applications can be launched from a hardware button.
# 
# If you do not configure this policy, applications can be launched from a hardware button.
Prevent launch an application:
  lgpo.set:
  - name: PreventLaunchApp_2
  - setting: Enabled
  - policy_class: Machine
