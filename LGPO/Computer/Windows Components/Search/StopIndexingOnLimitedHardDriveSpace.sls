# 301OrLater
#
# Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 2147483647 MB.
# 
# Enable this policy if computers in your environment have extremely limited hard drive space.
# 
# When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.
Stop indexing in the event of limited hard drive space:
  lgpo.set:
  - name: StopIndexingOnLimitedHardDriveSpace
  - setting:
      StopIndexingOnLimitedHardDriveSpace_MBLimit: decimal-placeholder
  - policy_class: Machine
