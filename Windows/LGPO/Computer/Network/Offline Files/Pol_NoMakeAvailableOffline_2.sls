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
# LOCATION: \Computer\Network\Offline Files\Pol_NoMakeAvailableOffline_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from making network files and folders available offline.
# 
# If you enable this policy setting, users cannot designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.
# 
# If you disable or do not configure this policy setting, users can manually specify files and folders that they want to make available offline.
# 
# Notes:
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.
# 
# The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
#       
Remove "Make Available Offline" command:
  lgpo.set:
  - name: Pol_NoMakeAvailableOffline_2
  - setting: Enabled
  - policy_class: Machine
