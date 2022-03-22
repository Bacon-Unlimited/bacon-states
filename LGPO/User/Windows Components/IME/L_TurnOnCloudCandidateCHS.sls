# windows:SUPPORTED_Windows_6_3only
#
# This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.
# 
# If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.
# 
# If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.
# 
# If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.
# 
# This Policy setting applies only to Microsoft CHS Pinyin IME.
Turn on cloud candidate for CHS:
  lgpo.set:
  - name: L_TurnOnCloudCandidateCHS
  - setting: Enabled
  - policy_class: User
