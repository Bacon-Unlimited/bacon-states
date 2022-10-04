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
# LOCATION: \User\Windows Components\File Explorer\LinkResolveIgnoreLinkInfo.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting determines whether Windows traces shortcuts back to their sources when it cannot find the target on the user's system.
# 
# Shortcut files typically include an absolute path to the original target file as well as the relative path to the current target file. When the system cannot find the file in the current target path, then, by default, it searches for the target in the original path. If the shortcut has been copied to a different computer, the original path might lead to a network computer, including external resources, such as an Internet server.
# 
# If you enable this policy setting, Windows only searches the current target path. It does not search for the original path even when it cannot find the target file in the current target path.
# 
# If you disable or do not configure this policy setting, Windows searches for the original path when it cannot find the target file in the current target path.
Do not track Shell shortcuts during roaming:
  lgpo.set:
  - name: LinkResolveIgnoreLinkInfo
  - setting: Enabled
  - policy_class: User
