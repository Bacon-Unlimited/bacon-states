# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting controls the live sticker feature, which uses an online service to provide stickers online.
# 
# If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the live stickers, and the user won't be able to turn it off.
# 
# If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.
# 
# If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the live sticker feature.
# 
# This Policy setting applies only to Microsoft CHS Pinyin IME.
Turn on Live Sticker:
  lgpo.set:
  - name: L_TurnOnLiveStickers
  - setting: Enabled
  - policy_class: User
