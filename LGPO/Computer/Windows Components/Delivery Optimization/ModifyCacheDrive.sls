# windows:SUPPORTED_Windows_10_0
#
# Specifies the drive Delivery Optimization shall use for its cache.
# 
# By default, %SystemDrive% is used to store the cache. The drive location can be specified using environment variables, drive letter or using a full path.
Modify Cache Drive:
  lgpo.set:
  - name: ModifyCacheDrive
  - setting:
      ModifyCacheDrive: text-placeholder
  - policy_class: Machine
