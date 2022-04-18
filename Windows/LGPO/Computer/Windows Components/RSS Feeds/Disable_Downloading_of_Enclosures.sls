# SUPPORTED_IE7
#
# This policy setting prevents the user from having enclosures (file attachments) downloaded from a feed to the user's computer.
# 
# If you enable this policy setting, the user cannot set the Feed Sync Engine to download an enclosure through the Feed property page. A developer cannot change the download setting through the Feed APIs.
# 
# If you disable or do not configure this policy setting, the user can set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can change the download setting through the Feed APIs.
Prevent downloading of enclosures:
  lgpo.set:
  - name: Disable_Downloading_of_Enclosures
  - setting: Enabled
  - policy_class: Machine
