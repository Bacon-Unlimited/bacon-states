# windows:SUPPORTED_Windows7
#
# This policy setting controls the state of the Inventory Collector.      
# 
# The Inventory Collector inventories applications, files, devices, and drivers on the system and sends the information to Microsoft.  This information is used to help diagnose compatibility problems.
# 
# If you enable this policy setting, the Inventory Collector will be turned off and data will not be sent to Microsoft. Collection of installation data through the Program Compatibility Assistant is also disabled.
# 
# If you disable or do not configure this policy setting, the Inventory Collector will be turned on.
# 
# Note: This policy setting has no effect if the Customer Experience Improvement Program is turned off. The Inventory Collector will be off.
Turn off Inventory Collector:
  lgpo.set:
  - name: AppCompatTurnOffProgramInventory
  - setting: Enabled
  - policy_class: Machine
