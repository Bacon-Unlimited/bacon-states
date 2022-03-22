# SUPPORTED_IE7
#
# This policy setting prevents the user from changing the level of pop-up filtering. The available levels are as follows:
#     High: Block all pop-ups.
#     Medium: Block most automatic pop-ups.
#     Low: Allow pop-ups from secure sites.
# 
# If you enable this policy setting, the user cannot change the filter level. You can specify the filter level by importing Privacy settings from your computer under Internet Explorer Maintenance.
# 
# If you disable or do not configure this policy setting, the user can manage pop-ups by changing the filter level.
# 
# You may also want to enable the "Prevent managing pop-up exception list" and "Turn off pop-up management" policy settings to prevent the user from configuring pop-up behavior.
Prevent changing pop-up filter level:
  lgpo.set:
  - name: DisablePopupFilterLevel
  - setting: Enabled
  - policy_class: Machine
