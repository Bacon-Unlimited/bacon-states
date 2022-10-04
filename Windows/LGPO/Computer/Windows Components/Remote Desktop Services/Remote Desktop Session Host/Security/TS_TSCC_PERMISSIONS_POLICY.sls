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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security\TS_TSCC_PERMISSIONS_POLICY.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies whether to disable the administrator rights to customize security permissions for the Remote Desktop Session Host server.  
# 
# You can use this setting to prevent administrators from making changes to the user groups allowed to connect remotely to the  RD Session Host server. By default, administrators are able to make such changes.
# 
# If you enable this policy setting the default security descriptors for existing groups on the RD Session Host server cannot be changed. All the security descriptors are read-only.
# 
# If you disable or do not configure this policy setting, server administrators have full read/write permissions to the user security descriptors by using the Remote Desktop Session WMI Provider.
# 
# Note: The preferred method of managing user access is by adding a user to the Remote Desktop Users group.
# 
Do not allow local administrators to customize permissions:
  lgpo.set:
  - name: TS_TSCC_PERMISSIONS_POLICY
  - setting: Enabled
  - policy_class: Machine
