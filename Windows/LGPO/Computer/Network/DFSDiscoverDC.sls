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
# LOCATION: \Computer\Network\DFSDiscoverDC.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to configure how often a Distributed File System (DFS) client attempts to discover domain controllers on a network. By default, a DFS client attempts to discover domain controllers every 15 minutes.
# 
# If you enable this policy setting, you can configure how often a DFS client attempts to discover domain controllers. This value is specified in minutes.
# 
# If you disable or do not configure this policy setting, the default value of 15 minutes applies.
# 
# Note: The minimum value you can select is 15 minutes. If you try to set this setting to a value less than 15 minutes, the default value of 15 minutes is applied.
Configure how often a DFS client discovers domain controllers:
  lgpo.set:
  - name: DFSDiscoverDC
  - setting:
      DFSDiscoverDialog: decimal-placeholder
  - policy_class: Machine
