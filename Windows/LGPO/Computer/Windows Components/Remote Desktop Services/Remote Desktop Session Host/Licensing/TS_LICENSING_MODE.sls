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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing\TS_LICENSING_MODE.sls
#
# SUPPORTED WINDOWS OS
# TS_SUPPORTED_Win2k3_Sp1
#
# 
#         This policy setting allows you to specify the type of Remote Desktop Services client access license (RDS CAL) that is required to connect to this RD Session Host server.
# 
#         You can use this policy setting to select one of three licensing modes: Per User , Per Device and AAD Per User .
# 
#         Per User licensing mode requires that each user account connecting to this RD Session Host server have an RDS Per User CAL issued from an RD Licensing server.
# 
#         Per Device licensing mode requires that each device connecting to this RD Session Host server have an RDS Per Device CAL issued from an RD Licensing server.
# 
#         AAD Per User licensing mode requires that each user account connecting to this RD Session Host server have a service plan that supports RDS licenses assigned in AAD.
#         
#         If you enable this policy setting, the Remote Desktop licensing mode that you specify is honored by the Remote Desktop license server and RD Session Host.
# 
#         If you disable or do not configure this policy setting, the licensing mode is not specified at the Group Policy level.
#       
Set the Remote Desktop licensing mode:
  lgpo.set:
  - name: TS_LICENSING_MODE
  - setting:
      TS_LICENSING_NAME: enum-placeholder
  - policy_class: Machine
