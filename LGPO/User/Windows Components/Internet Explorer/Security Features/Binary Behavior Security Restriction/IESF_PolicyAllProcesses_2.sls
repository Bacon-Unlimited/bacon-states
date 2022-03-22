# SUPPORTED_IE6SP2
#
# Internet Explorer contains dynamic binary behaviors: components that encapsulate specific functionality for the HTML elements to which they are attached. This policy setting controls whether the Binary Behavior Security Restriction setting is prevented or allowed.
# 
# If you enable this policy setting, binary behaviors are prevented for all processes. Any use of binary behaviors for HTML rendering is blocked.
# 
# If you disable or do not configure this policy setting, binary behaviors are allowed for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_2
  - setting: Enabled
  - policy_class: User
