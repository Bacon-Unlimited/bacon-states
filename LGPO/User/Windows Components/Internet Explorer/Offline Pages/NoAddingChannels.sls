# SUPPORTED_IE5_6
#
# Prevents users from adding channels to Internet Explorer.
# 
# Channels are Web sites that are updated automatically on your computer, according to a schedule specified by the channel provider.
# 
# If you enable this policy, the Add Active Channel button, which appears on a channel that users haven't yet subscribed to, will be disabled. Users also cannot add content that is based on a channel, such as some of the Active Desktop items from Microsoft's Active Desktop Gallery, to their desktop.
# 
# If you disable this policy or do not configure it, users can add channels to the Channel bar or to their desktop.
# 
# Note: Most channel providers use the words Add Active Channel for this option; however, a few use different words, such as Subscribe.
Disable adding channels:
  lgpo.set:
  - name: NoAddingChannels
  - setting: Enabled
  - policy_class: User
