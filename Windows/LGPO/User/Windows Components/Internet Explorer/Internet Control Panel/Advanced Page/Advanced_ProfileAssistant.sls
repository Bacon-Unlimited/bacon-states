# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting specifies whether you will accept requests from Web sites for Profile Assistant information.
# 
# If you enable this policy setting, Profile Assistant information will not be provided, and users will not be prompted to provide information.
# 
# If you disable this policy setting, then when a Web site requests Profile Assistant information, users will be prompted to choose which information to share. At that time, users can also choose to allow this information to be shared with the Web site in the future without being prompted.
# 
# If you do not configure this policy setting, a user will have the freedom to accept requests from Web sites for Profile Assistant information.
Turn off Profile Assistant:
  lgpo.set:
  - name: Advanced_ProfileAssistant
  - setting: Enabled
  - policy_class: User
