# SUPPORTED_IE5_6
#
# Prevents channel providers from recording information about when their channel pages are viewed by users who are working offline.
# 
# If you enable this policy, it disables any channel logging settings set by channel providers in the channel definition format (.cdf) file. The .cdf file determines the schedule and other settings for downloading Web content.
# 
# If you disable this policy or do not configure it, channel providers can record information about when their channel pages are viewed by users who are working offline.
Disable offline page hit logging:
  lgpo.set:
  - name: NoChannelLogging
  - setting: Enabled
  - policy_class: User
