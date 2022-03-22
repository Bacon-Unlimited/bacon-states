# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage dynamic binary and script behaviors: components that encapsulate specific functionality for HTML elements to which they were attached.
# 
# If you enable this policy setting, binary and script behaviors are available. If you select Administrator approved in the drop-down box, only behaviors listed in the Admin-approved Behaviors under Binary Behaviors Security Restriction policy are available.
# 
# If you disable this policy setting, binary and script behaviors are not available unless applications have implemented a custom security manager.
# 
# If you do not configure this policy setting, binary and script behaviors are not available unless applications have implemented a custom security manager.
Allow binary and script behaviors:
  lgpo.set:
  - name: IZ_PolicyBinaryBehaviors_7
  - setting:
      IZ_Partname2000: enum-placeholder
  - policy_class: User
