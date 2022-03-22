# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting controls the lexicon update feature, which downloads hot and popular words lexicon to local PC.
# 
# If you enable this policy setting, the functionality associated with this feature is turned on, hot and popular words lexicon can be downloaded to local PC, the user is able to turn it on or off in settings.
# 
# If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.
# 
# If you don't configure this policy setting, it will be turned on by default, and the user can turn on and turn off the lexicon udpate feature.
# 
# This Policy setting applies only to Microsoft CHS Pinyin IME.
Turn on lexicon update:
  lgpo.set:
  - name: L_TurnOnLexiconUpdate
  - setting: Enabled
  - policy_class: User
