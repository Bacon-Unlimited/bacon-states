# SUPPORTED_WMP9
#
# This policy setting allows you to prevent media information for music files from being retrieved from the Internet.
# 
# If you enable this policy setting, the Player is prevented from automatically obtaining media information for music files such as Windows Media Audio (WMA) and MP3 files from the Internet. In addition, the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box in the first use dialog box and on the Privacy and Media Library tabs in the Player are not selected and are not available.
# 
# If you disable or do not configure this policy setting, users can change the setting of the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box.
Prevent Music File Media Information Retrieval:
  lgpo.set:
  - name: PreventMusicFileMetadataRetrieval
  - setting: Enabled
  - policy_class: User
