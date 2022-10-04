##os: windows
################################################################################
#  Copyright [2018] - [2022] Bacon Unlimited. All Rights Reserved
#  __________________
#  NOTICE: This is provided free of use. There are no warranties or guarantees.
#           View the MIT license here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/LICENSE
###############################################################################

# This state uses the registry to block mounting shared drives or accessing network
# shares on Windows.
Remove_map_network_drive_registry:
  # If you enable this setting, the system removes the Map Network Drive and
  # Disconnect Network Drive commands from the toolbar and Tools menus in File
  # Explorer and Network Locations and from menus that appear when you right-click
  # the File Explorer or Network Locations icons.
  # This setting does not prevent users from connecting to another computer by
  # typing the name of a shared folder in the Run dialog box.
  reg.present:
    - name: Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
    - vname: NoNetConnectDisconnect
    - vtype: REG_DWORD
    - vdata: 1

Remove_Run_menu_from_Start_Menu_registry:
  # If you enable this setting, the following changes occur:
  # (1) The Run command is removed from the Start menu.
  # (2) The New Task (Run) command is removed from Task Manager.
  # (3) The user will be blocked from entering the following into the Internet Explorer Address Bar:
  #     --- A UNC path: \\\
  #     ---Accessing local drives: e.g., C:
  #     --- Accessing local folders: e.g., \temp>
  # Also, users with extended keyboards will no longer be able to display the
  # Run dialog box by pressing the Application key (the key with the Windows logo) + R.
  # Note:This setting affects the specified interface only. It does not prevent
  # users from using other methods to run programs.
  reg.present:
    - name: Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
    - vname: NoRun
    - vtype: REG_DWORD
    - vdata: 1
