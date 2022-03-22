# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether published User Activities can be uploaded.
#             If you enable this policy setting, activities of type User Activity are allowed to be uploaded.
#             If you disable this policy setting, activities of type User Activity are not allowed to be uploaded.
#             Deletion of activities of type User Activity are independent of this setting.
#             Policy change takes effect immediately.
#       
Allow upload of User Activities:
  lgpo.set:
  - name: UploadUserActivities
  - setting: Enabled
  - policy_class: Machine
