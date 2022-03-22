# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users can display nonsecure items and manage whether users receive a security information message to display pages containing both secure and nonsecure items.
# 
# If you enable this policy setting, and the drop-down box is set to Enable, the user does not receive a security information message (This page contains both secure and nonsecure items. Do you want to display the nonsecure items?) and nonsecure content can be displayed.
# 
# If the drop-down box is set to Prompt, the user will receive the security information message on the Web pages that contain both secure (https://) and nonsecure (http://) content.
# 
# If you disable this policy setting, users cannot receive the security information message and nonsecure content cannot be displayed.
# 
# If you do not configure this policy setting, the user will receive the security information message on the Web pages that contain both secure (https://) and nonsecure (http://) content.
Display mixed content:
  lgpo.set:
  - name: IZ_PolicyDisplayMixedContent_5
  - setting:
      IZ_Partname1609: enum-placeholder
  - policy_class: Machine
