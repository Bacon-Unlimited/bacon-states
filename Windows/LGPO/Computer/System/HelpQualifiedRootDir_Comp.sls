# windows:SUPPORTED_IE6SP1
#
# This policy setting allows you to restrict certain HTML Help commands to function only in HTML Help (.chm) files within specified folders and their subfolders. Alternatively, you can disable these commands on the entire system. It is strongly recommended that only folders requiring administrative privileges be added to this policy setting.
# 
#         If you enable this policy setting, the commands function only for .chm files in the specified folders and their subfolders.
# 
#         To restrict the commands to one or more folders, enable the policy setting and enter the desired folders in the text box on the Settings tab of the Policy Properties dialog box. Use a semicolon to separate folders. For example, to restrict the commands to only .chm files in the %windir%\help folder and D:\somefolder, add the following string to the edit box: "%windir%\help;D:\somefolder".
# 
#         Note: An environment variable may be used, (for example, %windir%), as long as it is defined on the system. For example, %programfiles% is not defined on some early versions of Windows.
# 
#         The "Shortcut" command is used to add a link to a Help topic, and runs executables that are external to the Help file. The "WinHelp" command is used to add a link to a Help topic, and runs a WinHLP32.exe Help (.hlp) file.
# 
#         To disallow the "Shortcut" and "WinHelp" commands on the entire local system, enable the policy setting and leave the text box on the Settings tab of the Policy Properties dialog box blank.
# 
#         If you disable or do not configure this policy setting, these commands are fully functional for all Help files.
# 
#         Note: Only folders on the local computer can be specified in this policy setting. You cannot use this policy setting to enable the "Shortcut" and "WinHelp" commands for .chm files that are stored on mapped drives or accessed using UNC paths.
# 
#         For additional options, see the "Restrict these programs from being launched from Help" policy.
#       
Restrict potentially unsafe HTML Help functions to specified folders:
  lgpo.set:
  - name: HelpQualifiedRootDir_Comp
  - setting:
      HelpQualifiedRootDir_Edit: text-placeholder
  - policy_class: Machine
