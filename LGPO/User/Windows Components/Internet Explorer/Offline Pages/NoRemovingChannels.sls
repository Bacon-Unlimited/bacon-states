# SUPPORTED_IE5_6
#
# Prevents users from disabling channel synchronization in Microsoft Internet Explorer.
# 
# Channels are Web sites that are automatically updated on your computer according to a schedule specified by the channel provider.
# 
# If you enable this policy, users cannot prevent channels from being synchronized.
# 
# If you disable this policy or do not configure it, users can disable the synchronization of channels.
# 
# This policy is intended to help administrators ensure that users' computers are being updated uniformly across their organization.
# 
# Note: This policy does not prevent users from removing active content from the desktop interface.
Disable removing channels:
  lgpo.set:
  - name: NoRemovingChannels
  - setting: Enabled
  - policy_class: User
