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
