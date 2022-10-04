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
# LOCATION: \User\System\User Profiles\LimitSize.sls
#
# SUPPORTED WINDOWS OS
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
