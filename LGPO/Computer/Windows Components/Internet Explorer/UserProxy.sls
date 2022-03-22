# SUPPORTED_IE5
#
# Applies proxy settings to all users of the same computer.
# 
# If you enable this policy, users cannot set user-specific proxy settings. They must use the zones created for all users of the computer.
# 
# If you disable this policy or do not configure it, users of the same computer can establish their own proxy settings.
# 
# This policy is intended to ensure that proxy settings apply uniformly to the same computer and do not vary from user to user.
Make proxy settings per-machine (rather than per-user):
  lgpo.set:
  - name: UserProxy
  - setting: Enabled
  - policy_class: Machine
