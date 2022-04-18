# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether User Activities can be published.
#             If you enable this policy setting, activities of type User Activity are allowed to be published.
#             If you disable this policy setting, activities of type User Activity are not allowed to be published.
#             Policy change takes effect immediately.
#       
Allow publishing of User Activities:
  lgpo.set:
  - name: PublishUserActivities
  - setting: Enabled
  - policy_class: Machine
