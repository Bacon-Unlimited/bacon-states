# windows:SUPPORTED_WindowsVista
#
# This policy setting prohibits access to Windows Connect Now (WCN) wizards. 
# 
# If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks. All the configuration related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled. 
# 
# If you disable or do not configure this policy setting, users can access the wizard tasks, including "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.
Prohibit access of the Windows Connect Now wizards:
  lgpo.set:
  - name: WCN_DisableWcnUi_2
  - setting: Enabled
  - policy_class: Machine
