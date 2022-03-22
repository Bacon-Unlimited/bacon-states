# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether the RPC Runtime maintains RPC state information for the system, and how much information it maintains. Basic state information, which consists only of the most commonly needed state data, is required for troubleshooting RPC problems.
# 
# If you disable this policy setting, the RPC runtime defaults to "Auto2" level.
# 
# If you do not configure this policy setting, the RPC  defaults to "Auto2" level. 
# 
# If you enable this policy setting, you can use the drop-down box to determine which systems maintain RPC state information.
# 
# --  "None" indicates that the system does not maintain any RPC state information. Note: Because the basic state information required for troubleshooting has a negligible effect on performance and uses only about 4K of memory, this setting is not recommended for most installations.
# 
# --  "Auto1" directs RPC to maintain basic state information only if the computer has at least 64 MB of memory.
# 
# --  "Auto2" directs RPC to maintain basic state information only if the computer has at least 128 MB of memory and is running Windows 2000 Server, Windows 2000 Advanced Server, or Windows 2000 Datacenter Server. 
# 
# --  "Server" directs RPC to maintain basic state information on the computer, regardless of its capacity.
# 
# --  "Full" directs RPC to maintain complete RPC state information on the system, regardless of its capacity. Because this level can degrade performance, it is recommended for use only while you are investigating an RPC problem.
# 
# Note: To retrieve the RPC state information from a system that maintains it, you must use a debugging tool.
# 
# Note: This policy setting will not be applied until the system is rebooted.
Maintain RPC Troubleshooting State Information:
  lgpo.set:
  - name: RpcStateInformation
  - setting:
      RpcStateInformationList: enum-placeholder
  - policy_class: Machine
