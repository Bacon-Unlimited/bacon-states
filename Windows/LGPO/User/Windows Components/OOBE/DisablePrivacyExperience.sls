# windows:SUPPORTED_Windows_10_0_RS5
#
# When logging into a new user account for the first time or after an upgrade in some scenarios, that user may be presented with a screen or series of screens that prompts the user to choose privacy settings for their account. Enable this policy to prevent this experience from launching.
# 
# If this policy is enabled, the privacy experience will not launch for newly-created user accounts or for accounts that would have been prompted to choose their privacy settings after an upgrade.
# 
# If this policy is disabled or not configured, then the privacy experience may launch for newly-created user accounts or for accounts that should be prompted to choose their privacy settings after an upgrade.
Don't launch privacy settings experience on user logon:
  lgpo.set:
  - name: DisablePrivacyExperience
  - setting: Enabled
  - policy_class: User
