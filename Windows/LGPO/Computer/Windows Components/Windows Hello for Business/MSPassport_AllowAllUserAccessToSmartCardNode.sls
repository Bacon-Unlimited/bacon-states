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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\MSPassport_AllowAllUserAccessToSmartCardNode.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows prevents users on the same computer from enumerating provisioned Windows Hello for Business credentials for other users.
# 
# If you enable this policy setting, Windows allows all users of the computer to enumerate all Windows Hello for Business credentials, but still require each user to provide their own factors for authentication.
# 
# If you disable or do not configure this policy setting, Windows does not allow the enumeration of provisioned Windows Hello for Business credentials for other users on the same device.
# 
# This policy setting is designed for a single user who has enrolled privileged and non-privileged on a single device. The user owns both credentials, which enables them to sign-in using non-privileged credentials, but can performed elevated tasks without signing-out.
# 
# This policy setting is incompatible with Windows Hello for Business credentials provisioned when the "Turn off smart card emulation" is enabled.
# 
# Windows requires a reboot after you apply this setting to a computer.
#         
Allow enumeration of emulated smart card for all users:
  lgpo.set:
  - name: MSPassport_AllowAllUserAccessToSmartCardNode
  - setting: Enabled
  - policy_class: Machine
