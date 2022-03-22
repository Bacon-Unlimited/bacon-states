# windows:SUPPORTED_Win2k
#
# Lets you selectively permit or prohibit the use of Microsoft Management Console (MMC) snap-ins.
# 
# --  If you enable this setting, all snap-ins are prohibited, except those that you explicitly permit. Use this setting if you plan to prohibit use of most snap-ins.
# 
#     To explicitly permit a snap-in, open the Restricted/Permitted snap-ins setting folder and enable the settings representing the snap-in you want to permit. If a snap-in setting in the folder is disabled or not configured, the snap-in is prohibited.
# 
# --  If you disable this setting or do not configure it, all snap-ins are permitted, except those that you explicitly prohibit. Use this setting if you plan to permit use of most snap-ins.
# 
#     To explicitly prohibit a snap-in, open the Restricted/Permitted snap-ins setting folder and then disable the settings representing the snap-ins you want to prohibit. If a snap-in setting in the folder is enabled or not configured, the snap-in is permitted.
# 
# When a snap-in is prohibited, it does not appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in does not appear.
# 
# Note: If you enable this setting, and you do not enable any settings in the Restricted/Permitted snap-ins folder, users cannot use any MMC snap-ins.
Restrict users to the explicitly permitted list of snap-ins:
  lgpo.set:
  - name: MMC_Restrict_To_Permitted_Snapins
  - setting: Enabled
  - policy_class: User
