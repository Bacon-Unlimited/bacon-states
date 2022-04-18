# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether to show the "Did you know?" section of Help and Support Center.
# 
# This content is dynamically updated when users who are connected to the Internet open Help and Support Center, and provides up-to-date information about Windows and the computer.
# 
# If you enable this policy setting, the Help and Support Center no longer retrieves nor displays "Did you know?" content.
# 
# If you disable or do not configure this policy setting, the Help and Support Center retrieves and displays "Did you know?" content.
# 
# You might want to enable this policy setting for users who do not have Internet access, because the content in the "Did you know?" section will remain static indefinitely without an Internet connection.
Turn off Help and Support Center "Did you know?" content:
  lgpo.set:
  - name: HSS_HeadlinesPolicy
  - setting: Enabled
  - policy_class: Machine
