# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage permissions for Java applets.
# 
# If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.
# 
# Low Safety enables applets to perform all operations.
# 
# Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program cannot make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.
# 
# High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.
# 
# If you disable this policy setting, Java applets cannot run.
# 
# If you do not configure this policy setting, the permission is set to Medium Safety.
Java permissions:
  lgpo.set:
  - name: IZ_PolicyJavaPermissions_9
  - setting:
      IZ_Partname1C00: enum-placeholder
  - policy_class: User
