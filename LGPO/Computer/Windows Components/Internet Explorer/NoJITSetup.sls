# SUPPORTED_IE5_6
#
# Prevents Internet Explorer from automatically installing components.
# 
# If you enable this policy, it prevents Internet Explorer from downloading a component when users browse to a Web site that needs that component.
# 
# If you disable this policy or do not configure it, users will be prompted to download and install a component when visiting a Web site that uses that component.
# 
# This policy is intended to help the administrator control which components the user installs.
Disable Automatic Install of Internet Explorer components:
  lgpo.set:
  - name: NoJITSetup
  - setting: Enabled
  - policy_class: Machine
