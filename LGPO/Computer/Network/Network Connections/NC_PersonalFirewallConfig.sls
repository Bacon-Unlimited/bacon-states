# windows:SUPPORTED_WindowsNET_XP
#
# Prohibits use of Internet Connection Firewall on your DNS domain network.
# 
# Determines whether users can enable the Internet Connection Firewall feature on a connection, and if the Internet Connection Firewall service can run on a computer.
# 
# Important: This setting is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting does not apply.
# 
# The Internet Connection Firewall is a stateful packet filter for home and small office users to protect them from Internet network security threats.
# 
# If you enable this setting, Internet Connection Firewall cannot be enabled or configured by users (including administrators), and the Internet Connection Firewall service cannot run on the computer. The option to enable the Internet Connection Firewall through the Advanced tab is removed. In addition, the Internet Connection Firewall is not enabled for remote access connections created through the Make New Connection Wizard. The Network Setup Wizard is disabled.
# 
# Note: If you enable the "Windows Firewall: Protect all network connections" policy setting, the "Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting has no effect on computers that are running Windows Firewall, which replaces Internet Connection Firewall when you install Windows XP Service Pack 2.
# 
# If you disable this setting or do not configure it, the Internet Connection Firewall is disabled when a LAN Connection or VPN connection is created, but users can use the Advanced tab in the connection properties to enable it. The Internet Connection Firewall is enabled by default on the connection for which Internet Connection Sharing is enabled. In addition, remote access connections created through the Make New Connection Wizard have the Internet Connection Firewall enabled.
Prohibit use of Internet Connection Firewall on your DNS domain network:
  lgpo.set:
  - name: NC_PersonalFirewallConfig
  - setting: Enabled
  - policy_class: Machine
