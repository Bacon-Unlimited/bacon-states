# windows:SUPPORTED_WindowsXP
#
# Permits or prohibits use of this snap-in.
# 
# If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.
# 
# If this setting is not configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.
# 
# --  If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users cannot use any snap-in except those explicitly permitted.
# 
#     To explicitly permit use of this snap-in, enable this setting. If this setting is not configured (or disabled), this snap-in is prohibited.
# 
# --  If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited.
# 
#     To explicitly prohibit use of this snap-in, disable this setting. If this setting is not configured (or enabled), the snap-in is permitted.
# 
# When a snap-in is prohibited, it does not appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in does not appear.
Extended View (Web View):
  lgpo.set:
  - name: MMC_ExtendView
  - setting: Enabled
  - policy_class: User
