# windows:SUPPORTED_Windows_10_0_RS6_NOSERVER
#
# This policy setting controls whether a device will automatically sign in and lock the last interactive user after the system restarts or after a shutdown and cold boot.
# 
# This only occurs if the last interactive user didn’t sign out before the restart or shutdown.​
# 
# If the device is joined to Active Directory or Azure Active Directory, this policy only applies to Windows Update restarts. Otherwise, this will apply to both Windows Update restarts and user-initiated restarts and shutdowns.​
# 
# If you don’t configure this policy setting, it is enabled by default. When the policy is enabled, the user is automatically signed in and the session is automatically locked with all lock screen apps configured for that user after the device boots.​
# 
# After enabling this policy, you can configure its settings through the ConfigAutomaticRestartSignOn policy, which configures the mode of automatically signing in and locking the last interactive user after a restart or cold boot​.
# 
# If you disable this policy setting, the device does not configure automatic sign in. The user’s lock screen apps are not restarted after the system restarts.
Sign-in and lock last interactive user automatically after a restart:
  lgpo.set:
  - name: AutomaticRestartSignOn
  - setting: Enabled
  - policy_class: Machine
