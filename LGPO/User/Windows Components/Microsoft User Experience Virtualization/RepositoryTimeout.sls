# windows:SUPPORTED_Windows7
#
# This policy setting configures the number of milliseconds that the computer waits when retrieving user settings from the settings storage location. 
# You can use this setting to override the default value of 2000 milliseconds. 
# If you enable this policy setting, set the number of milliseconds that the system waits to retrieve settings. 
# If you disable or do not configure this policy setting, the default value of 2000 milliseconds is used.
#       
Synchronization timeout:
  lgpo.set:
  - name: RepositoryTimeout
  - setting:
      RepositoryTimeout: decimal-placeholder
  - policy_class: User
