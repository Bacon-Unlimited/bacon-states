# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to apply the set of Group Policy objects for the computer to any user who logs on to a computer affected by this setting. It is intended for special-use computers, such as those in public places, laboratories, and classrooms, where you must modify the user setting based on the computer that is being used.
# 
# By default, the user's Group Policy Objects determine which user settings apply. If this setting is enabled, then, when a user logs on to this computer, the computer's Group Policy Objects determine which set of Group Policy Objects applies.
# 
# If you enable this setting, you can select one of the following modes from the Mode box:
# 
# "Replace" indicates that the user settings defined in the computer's Group Policy Objects replace the user settings normally applied to the user.
# 
# "Merge" indicates that the user settings defined in the computer's Group Policy Objects and the user settings normally applied to the user are combined. If the settings conflict, the user settings in the computer's Group Policy Objects take precedence over the user's normal settings.
# 
# If you disable this setting or do not configure it, the user's Group Policy Objects determines which user settings apply.
# 
# Note: This setting is effective only when both the computer account and the user account are in at least Windows 2000 domains.
Configure user Group Policy loopback processing mode:
  lgpo.set:
  - name: UserPolicyMode
  - setting:
      UserPolicyModeOp: enum-placeholder
  - policy_class: Machine
