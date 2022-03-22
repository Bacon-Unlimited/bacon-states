# windows:SUPPORTED_Win2k
#
# This policy setting sets the maximum size of each user profile and determines the system's response when a user profile reaches the maximum size. This policy setting affects both local and roaming profiles.
# 
# If you disable this policy setting or do not configure it, the system does not limit the size of user profiles.
# 
# If you enable this policy setting, you can:
# 
# -- Set a maximum permitted user profile size.
# -- Determine whether the registry files are included in the calculation of the profile size.
# -- Determine whether users are notified when the profile exceeds the permitted maximum size.
# -- Specify a customized message notifying users of the oversized profile.
# -- Determine how often the customized message is displayed.
# 
# Note: In operating systems earlier than Microsoft Windows Vista, Windows will not allow users to log off until the profile size has been reduced to within the allowable limit. In Microsoft Windows Vista, Windows will not block users from logging off. Instead, if the user has a roaming user profile, Windows will not synchronize the user's profile with the roaming profile server if the maximum profile size limit specified here is exceeded.
Limit profile size:
  lgpo.set:
  - name: LimitSize
  - setting:
      IncludeRegInProQuota: boolean-placeholder
      ProfileSize: decimal-placeholder
      SizeMessage: text-placeholder
      WarnUser: boolean-placeholder
      WarnUserTimeout: decimal-placeholder
  - policy_class: User
