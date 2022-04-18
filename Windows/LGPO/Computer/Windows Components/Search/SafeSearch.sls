# WinBlueExclusive
#
# This policy setting allows you to control the SafeSearch setting used when performing a query in Search. 
# 
# If you enable this policy setting, you can specify one of three SafeSearch settings, which users won't be able to change:
# 
#     -Strict: Filter out adult text, images, and videos from search results;
# 
#     -Moderate: Filter adult images and videos but not text from search results;
# 
#     -Off: Don't filter adult content from search results.
# 
# If you disable or don't configure this policy setting, users can specify the SafeSearch setting.
# 
# Windows 10 users should use Search/DoNotUseWebResults
Set the SafeSearch setting for Search:
  lgpo.set:
  - name: SafeSearch
  - setting:
      SafeSearch_Dropdown: enum-placeholder
  - policy_class: Machine
