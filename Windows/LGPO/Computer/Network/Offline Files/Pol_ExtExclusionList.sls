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
# LOCATION: \Computer\Network\Offline Files\Pol_ExtExclusionList.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Lists types of files that cannot be used offline.
# 
# This setting lets you exclude certain types of files from automatic and manual caching for offline use. The system does not cache files of the type specified in this setting even when they reside on a network share configured for automatic caching. Also, if users try to make a file of this type available offline, the operation will fail and the following message will be displayed in the Synchronization Manager progress dialog box: "Files of this type cannot be made available offline."
# 
# This setting is designed to protect files that cannot be separated, such as database components.
# 
# To use this setting, type the file name extension in the "Extensions" box. To type more than one extension, separate the extensions with a semicolon (;).
# 
# Note: To make changes to this setting effective, you must log off and log on again.
Files not cached:
  lgpo.set:
  - name: Pol_ExtExclusionList
  - setting:
      Lbl_ExtExclusionListEdit: text-placeholder
  - policy_class: Machine
