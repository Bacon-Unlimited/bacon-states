####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Application Compatibility\AppCompatTurnOffProgramInventory.sls
#
# SUPPORTED WINDOWS OS
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
