# windows:SUPPORTED_Windows_10_0
#
# Denies access to the retail catalog in the Microsoft Store, but displays the private store.
# 
# If you enable this setting, users will not be able to view the retail catalog in the Microsoft Store, but they will be able to view apps in the private store.
# 
# If you disable or don't configure this setting, users can access the retail catalog in the Microsoft Store.
Only display the private store within the Microsoft Store:
  lgpo.set:
  - name: RequirePrivateStoreOnly
  - setting: Enabled
  - policy_class: User
