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
# LOCATION: \Computer\Network\WWAN Service\WWAN Media Cost\SetCost3G.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting configures the cost of 3G connections on the local machine.
# 
# If this policy setting is enabled, a drop-down list box presenting possible cost values will be active.  Selecting one of the following values from the list will set the cost of all 3G connections on the local machine:
# 
# - Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. 
# 
# - Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. 
# 
# - Variable: This connection is costed on a per byte basis.
# 
# If this policy setting is disabled or is not configured, the cost of 3G connections is Fixed by default.
#       
Set 3G Cost:
  lgpo.set:
  - name: SetCost3G
  - setting:
      Cost3G_Dropdownlist: enum-placeholder
  - policy_class: Machine
