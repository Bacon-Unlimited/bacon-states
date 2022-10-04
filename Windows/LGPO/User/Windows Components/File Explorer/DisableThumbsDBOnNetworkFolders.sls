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
# LOCATION: \User\Windows Components\File Explorer\DisableThumbsDBOnNetworkFolders.sls
#
# SUPPORTED WINDOWS OS
# products:MicrosoftWindowsVista_SP1
#
# Turns off the caching of thumbnails in hidden thumbs.db files.
# 
# This policy setting allows you to configure File Explorer to cache thumbnails of items residing in network folders in hidden thumbs.db files.
# 
# If you enable this policy setting, File Explorer does not create, read from, or write to thumbs.db files.
# 
# If you disable or do not configure this policy setting, File Explorer creates, reads from, and writes to thumbs.db files.
# 
Turn off the caching of thumbnails in hidden thumbs.db files:
  lgpo.set:
  - name: DisableThumbsDBOnNetworkFolders
  - setting: Enabled
  - policy_class: User
