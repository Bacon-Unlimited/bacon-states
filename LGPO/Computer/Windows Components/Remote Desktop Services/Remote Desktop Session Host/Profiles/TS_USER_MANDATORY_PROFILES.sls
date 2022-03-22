# TS_SUPPORTED_Win2k3_Sp2
#
# This policy setting allows you to specify whether Remote Desktop Services uses a mandatory profile for all users connecting remotely to the RD Session Host server.
# 
# If you enable this policy setting, Remote Desktop Services uses the path specified in the "Set path for Remote Desktop Services Roaming User Profile" policy setting as the root folder for the mandatory user profile. All users connecting remotely to the RD Session Host server use the same user profile.
# 
# If you disable or do not configure this policy setting, mandatory user profiles are not used by users connecting remotely to the RD Session Host server.
# 
# Note:
# 
# For this policy setting to take effect, you must also enable and configure the "Set path for Remote Desktop Services Roaming User Profile" policy setting.
# 
Use mandatory profiles on the RD Session Host server:
  lgpo.set:
  - name: TS_USER_MANDATORY_PROFILES
  - setting: Enabled
  - policy_class: Machine
