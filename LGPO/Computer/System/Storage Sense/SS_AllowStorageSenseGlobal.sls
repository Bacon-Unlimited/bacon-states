# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# Storage Sense can automatically clean some of the user’s files to free up disk space. By default, Storage Sense is automatically turned on when the machine runs into low disk space and is set to run whenever the machine runs into storage pressure. This cadence can be changed in Storage settings or set with the "Configure Storage Sense cadence" group policy.
# 
# Enabled:
# Storage Sense is turned on for the machine, with the default cadence as ‘during low free disk space’. Users cannot disable Storage Sense, but they can adjust the cadence (unless you also configure the "Configure Storage Sense cadence" group policy).
# 
# Disabled:
# Storage Sense is turned off the machine. Users cannot enable Storage Sense.
# 
# Not Configured:
# By default, Storage Sense is turned off until the user runs into low disk space or the user enables it manually. Users can configure this setting in Storage settings.
#     
Allow Storage Sense:
  lgpo.set:
  - name: SS_AllowStorageSenseGlobal
  - setting: Enabled
  - policy_class: Machine
