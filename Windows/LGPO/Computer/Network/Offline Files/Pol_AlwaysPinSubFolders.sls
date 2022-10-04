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
# LOCATION: \Computer\Network\Offline Files\Pol_AlwaysPinSubFolders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Makes subfolders available offline whenever their parent folder is made available offline.
# 
# This setting automatically extends the "make available offline" setting to all new and existing subfolders of a folder. Users do not have the option of excluding subfolders.
# 
# If you enable this setting, when you make a folder available offline, all folders within that folder are also made available offline. Also, new folders that you create within a folder that is available offline are made available offline when the parent folder is synchronized.
# 
# If you disable this setting or do not configure it, the system asks users whether they want subfolders to be made available offline when they make a parent folder available offline.
Subfolders always available offline:
  lgpo.set:
  - name: Pol_AlwaysPinSubFolders
  - setting: Enabled
  - policy_class: Machine
