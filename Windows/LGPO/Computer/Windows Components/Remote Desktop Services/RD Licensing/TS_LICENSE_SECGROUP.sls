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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\RD Licensing\TS_LICENSE_SECGROUP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to specify the RD Session Host servers to which a Remote Desktop license server will offer Remote Desktop Services client access licenses (RDS CALs).
# 
# You can use this policy setting to control which RD Session Host servers are issued RDS CALs by the Remote Desktop license server. By default, a license server issues an RDS CAL to any RD Session Host server that requests one.
# 
# If you enable this policy setting and this policy setting is applied to a Remote Desktop license server, the license server will only respond to RDS CAL requests from RD Session Host servers whose computer accounts are a member of the RDS Endpoint Servers group on the license server.
# 
# By default, the RDS Endpoint Servers group is empty.
# 
# If you disable or do not configure this policy setting, the Remote Desktop license server issues an RDS CAL to any RD Session Host server that requests one. The RDS Endpoint Servers group is not deleted or changed in any way by disabling or not configuring this policy setting.
# 
# Note: You should only enable this policy setting when the license server is a member of a domain. You can only add computer accounts for RD Session Host servers to the RDS Endpoint Servers group when the license server is a member of a domain.
License server security group:
  lgpo.set:
  - name: TS_LICENSE_SECGROUP
  - setting: Enabled
  - policy_class: Machine
