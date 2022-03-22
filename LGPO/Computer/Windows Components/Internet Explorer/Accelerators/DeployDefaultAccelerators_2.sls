# SUPPORTED_IE8
#
# This policy setting allows you to add default Accelerators.
# 
# If you enable this policy setting, the specified Accelerators are added to the user's browser. The user can append other Accelerators to this list, but the user cannot remove or change the Accelerators that this policy setting has added. Default and non-default Accelerators should not overlap.
# 
# If you disable or do not configure this policy setting, the user has Accelerators that are provided through first use of the browser.
Add default Accelerators:
  lgpo.set:
  - name: DeployDefaultAccelerators_2
  - setting:
      DeployAcceleratorsDefaults:
      - placeholder1
      - placeholder2
  - policy_class: Machine
