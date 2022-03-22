# SUPPORTED_IE5
#
# Applies security zone information to all users of the same computer. A security zone is a group of Web sites with the same security level.
# 
# If you enable this policy, changes that the user makes to a security zone will apply to all users of that computer.
# 
# If you disable this policy or do not configure it, users of the same computer can establish their own security zone settings.
# 
# This policy is intended to ensure that security zone settings apply uniformly to the same computer and do not vary from user to user.
# 
# Also, see the "Security zones: Do not allow users to change policies" policy.
'Security Zones: Use only machine settings ':
  lgpo.set:
  - name: Security_HKLM_only
  - setting: Enabled
  - policy_class: Machine
