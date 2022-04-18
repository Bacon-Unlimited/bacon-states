# SUPPORTED_IE8
#
# This policy setting allows you to manage whether users can access Accelerators.
# 
# If you enable this policy setting, users cannot access Accelerators.
# 
# If you disable or do not configure this policy setting, users can access Accelerators and install new Accelerators.
Turn off Accelerators:
  lgpo.set:
  - name: TurnOffAccelerators
  - setting: Enabled
  - policy_class: Machine
