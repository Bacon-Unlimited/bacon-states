# windows:SUPPORTED_Windows7To2k
#
# Displays Start menu shortcuts to partially installed programs in gray text.
# 
# This setting makes it easier for users to distinguish between programs that are fully installed and those that are only partially installed.
# 
# Partially installed programs include those that a system administrator assigns using Windows Installer and those that users have configured for full installation upon first use.
# 
# If you disable this setting or do not configure it, all Start menu shortcuts appear as black text.
# 
# Note: Enabling this setting can make the Start menu slow to open.
Gray unavailable Windows Installer programs Start Menu shortcuts:
  lgpo.set:
  - name: GreyMSIAds
  - setting: Enabled
  - policy_class: User
