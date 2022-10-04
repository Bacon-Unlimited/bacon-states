####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Windows Components\Windows Media Player\PreventMusicFileMetadataRetrieval.sls
#
# SUPPORTED WINDOWS OS
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
