##os: windows
################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# This state uses GPO settings to block mounting shared drives or accessing network
# shares on Windows.
Remove_map_network_drive_gpo:
  # If you enable this setting, the system removes the Map Network Drive and
  # Disconnect Network Drive commands from the toolbar and Tools menus in File
  # Explorer and Network Locations and from menus that appear when you right-click
  # the File Explorer or Network Locations icons.
  # This setting does not prevent users from connecting to another computer by
  # typing the name of a shared folder in the Run dialog box.
  lgpo.set:
    - name: Windows Components\File Explorer\Remove "Map Network Drive" and "Disconnect Network Drive"
    - setting: Enabled
    - policy_class: User

Remove_Run_menu_from_Start_Menu_gpo:
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
  lgpo.set:
    - name: Start Menu and Taskbar\Remove Run menu from Start Menu
    - setting: Enabled
    - policy_class: User
