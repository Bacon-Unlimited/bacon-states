# SUPPORTED_IE10
#
# This policy setting allows websites to store indexed database cache information on client computers.
# 
# If you enable this policy setting, websites will be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be unavailable to users.
# 
# If you disable this policy setting, websites will not be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be unavailable to users.
# 
# If you do not configure this policy setting, websites will be able to store an indexed database on client computers. Allow website database and caches on Website Data Settings will be available to users. Users can choose whether or not to allow websites to store data on their computers.
Allow websites to store indexed databases on client computers:
  lgpo.set:
  - name: IndexedDB_AllowWebsiteDatabases
  - setting: Enabled
  - policy_class: Machine