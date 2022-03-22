# terminalserver:TS_SUPPORTED_Windows7_Server
#
# This policy setting allows you to limit the size of the entire roaming user profile cache on the local drive.  This policy setting only applies to a computer on which the Remote Desktop Session Host role service is installed.
# 
# Note:  If you want to limit the size of an individual user profile, use the "Limit profile size" policy setting located in User Configuration\Policies\Administrative Templates\System\User Profiles.
# 
# If you enable this policy setting, you must specify a monitoring interval (in minutes) and a maximum size (in gigabytes) for the entire roaming user profile cache. The monitoring interval determines how often the size of the entire roaming user profile cache is checked. When the size of the entire roaming user profile cache exceeds the maximum size that you have specified, the oldest (least recently used) roaming user profiles will be deleted until the size of the entire roaming user profile cache is less than the maximum size specified.
# 
# If you disable or do not configure this policy setting, no restriction is placed on the size of the entire roaming user profile cache on the local drive.
# 
# Note:  This policy setting is ignored if the "Prevent Roaming Profile changes from propagating to the server" policy setting located in Computer Configuration\Policies\Administrative Templates\System\User Profiles is enabled.
# 
Limit the size of the entire roaming user profile cache:
  lgpo.set:
  - name: TS_DELETE_ROAMING_USER_PROFILES
  - setting:
      TS_PROFILE_DIRECTORY_MONITORING_INTERVAL: decimal-placeholder
      TS_PROFILE_DIRECTORY_QUOTA: decimal-placeholder
  - policy_class: Machine
