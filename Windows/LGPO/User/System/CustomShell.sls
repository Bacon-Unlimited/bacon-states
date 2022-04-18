# windows:SUPPORTED_Win2k
#
# Specifies an alternate user interface.
# 
# The Explorer program (%windir%\explorer.exe) creates the familiar Windows interface, but you can use this setting to specify an alternate interface. If you enable this setting, the system starts the interface you specify instead of Explorer.exe.
# 
# To use this setting, copy your interface program to a network share or to your system drive. Then, enable this setting, and type the name of the interface program, including the file name extension, in the Shell name text box. If the interface program file is not located in a folder specified in the Path environment variable for your system, enter the fully qualified path to the file.
# 
# If you disable this setting or do not configure it, the setting is ignored and the system displays the Explorer interface.
# 
# Tip: To find the folders indicated by the Path environment variable, click System Properties in Control Panel, click the Advanced tab, click the Environment Variables button, and then, in the System variables box, click Path.
Custom User Interface:
  lgpo.set:
  - name: CustomShell
  - setting:
      CustomShellInst: text-placeholder
  - policy_class: User
