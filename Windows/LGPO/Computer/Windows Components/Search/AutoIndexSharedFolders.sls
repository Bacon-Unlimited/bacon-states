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
# LOCATION: \Computer\Windows Components\Search\AutoIndexSharedFolders.sls
#
# SUPPORTED WINDOWS OS
# WS4Only
#
# This policy setting configures how Windows Search adds shared folders to the search index.
# 
# If you enable this policy setting, Windows Search is prevented from automatically adding shared folders to the index. Windows Search does not automatically add shares created on the computer to the scope of the index.
# 
# If you disable or do not configure this policy setting, Windows Search monitors which folders are shared or not shared on this computer, and automatically adds them to or removes them from the index.
Prevent automatically adding shared folders to the Windows Search index:
  lgpo.set:
  - name: AutoIndexSharedFolders
  - setting: Enabled
  - policy_class: Machine
