# SUPPORTED_IE5_6
#
# Prevents users from viewing the Channel bar interface. Channels are Web sites that are automatically updated on their computer according to a schedule specified by the channel provider.
# 
# If you enable this policy, the Channel bar interface will be disabled, and users cannot select the Internet Explorer Channel Bar check box on the Web tab in the Display Properties dialog box.
# 
# If you disable this policy or do not configure it, users can view and subscribe to channels from the Channel bar interface.
Disable channel user interface completely:
  lgpo.set:
  - name: NoChannelUI
  - setting: Enabled
  - policy_class: User
