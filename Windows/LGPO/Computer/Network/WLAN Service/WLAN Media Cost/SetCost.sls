# windows:SUPPORTED_Windows8
#
# This policy setting configures the cost of Wireless LAN (WLAN) connections on the local machine.
# 
# If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all WLAN connections on the local machine:
# 
# - Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. 
# 
# - Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. 
# 
# - Variable: This connection is costed on a per byte basis.
# 
# If this policy setting is disabled or is not configured, the cost of Wireless LAN connections is Unrestricted by default.
#       
Set Cost:
  lgpo.set:
  - name: SetCost
  - setting:
      Cost_Dropdownlist: enum-placeholder
  - policy_class: Machine
