# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether users can search and view content from Windows Online in Help and Support. Windows Online provides the most up-to-date Help content for Windows.
# 
# If you enable this policy setting, users are prevented from accessing online assistance content from Windows Online.
# 
# If you disable or do not configure this policy setting, users can access online assistance if they have a connection to the Internet and have not disabled Windows Online from the Help and Support Options page.
Turn off Windows Online:
  lgpo.set:
  - name: HPOnlineAssistance
  - setting: Enabled
  - policy_class: User
