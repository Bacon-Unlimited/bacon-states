# SUPPORTED_IE6ONLY
#
# Allows Administrators to enable and disable the ability for Outlook Express users to save or open attachments that can potentially contain a virus.
# 
# If you check the block attachments setting, users will be unable to open or save attachments that could potentially contain a virus.  Users will not be able to disable the blocking of attachments in options.
# 
# If the block attachments setting is not checked, the user can specify to enable or disable the blocking of attachments in options.
Configure Outlook Express:
  lgpo.set:
  - name: OESettings
  - setting:
      OEVirus: boolean-placeholder
  - policy_class: User
