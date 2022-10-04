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
# LOCATION: \User\System\Folder Redirection\DisableFRAdminPin.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to control whether all redirected shell folders, such as Contacts, Documents, Desktop, Favorites, Music, Pictures, Videos, Start Menu, and AppData\Roaming, are available offline by default.
# 
# If you enable this policy setting, users must manually select the files they wish to make available offline.  
# 
# If you disable or do not configure this policy setting, redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.  
# 
# Note: This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.  
# 
# Note: Do not enable this policy setting if users will need access to their redirected files if the network or server holding the redirected files becomes unavailable.
# 
# Note: If one or more valid folder GUIDs are specified in the policy setting "Do not automatically make specific redirected folders available offline", that setting will override the configured value of "Do not automatically make all redirected folders available offline".
#       
Do not automatically make all redirected folders available offline:
  lgpo.set:
  - name: DisableFRAdminPin
  - setting: Enabled
  - policy_class: User
