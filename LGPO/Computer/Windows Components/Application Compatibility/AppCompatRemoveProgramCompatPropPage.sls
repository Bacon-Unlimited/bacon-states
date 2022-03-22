# windows:SUPPORTED_WindowsNET
#
# This policy controls the visibility of the Program Compatibility property page shell extension.  This shell extension is visible on the property context-menu of any program shortcut or executable file.
# 
# The compatibility property page displays a list of options that can be selected and applied to the application to resolve the most common issues affecting legacy applications.  Enabling this policy setting removes the property page from the context-menus, but does not affect previous compatibility settings applied to application using this interface.
Remove Program Compatibility Property Page:
  lgpo.set:
  - name: AppCompatRemoveProgramCompatPropPage
  - setting: Enabled
  - policy_class: Machine
