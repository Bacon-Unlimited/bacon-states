# windows:SUPPORTED_WindowsXP
#
# Determines whether a user can install and configure the Network Bridge.
# 
# Important: This settings is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting does not apply.
# 
# The Network Bridge allows users to create a layer 2 MAC bridge, enabling them to connect two or more network segements together. This connection appears in the Network Connections folder.
# 
# If you disable this setting or do not configure it, the user will be able to create and modify the configuration of a Network Bridge. Enabling this setting does not remove an existing Network Bridge from the user's computer.
Prohibit installation and configuration of Network Bridge on your DNS domain network:
  lgpo.set:
  - name: NC_AllowNetBridge_NLA
  - setting: Enabled
  - policy_class: Machine
