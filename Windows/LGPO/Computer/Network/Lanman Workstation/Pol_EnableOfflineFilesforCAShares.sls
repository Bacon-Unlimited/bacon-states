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
# LOCATION: \Computer\Network\Lanman Workstation\Pol_EnableOfflineFilesforCAShares.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines the behavior of Offline Files on clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.
# 
#         If you enable this policy setting, the "Always Available offline" option will appear in the File Explorer menu on a Windows computer when connecting to a CA-enabled share. Pinning of files on CA-enabled shares using client-side caching will also be possible.
# 
#         If you disable or do not configure this policy setting, Windows will prevent use of Offline Files with CA-enabled shares.
# 
#         Note: Microsoft does not recommend enabling this group policy. Use of CA with Offline Files will lead to very long transition times between the online and offline states.
#       
Offline Files Availability on Continuous Availability Shares:
  lgpo.set:
  - name: Pol_EnableOfflineFilesforCAShares
  - setting: Enabled
  - policy_class: Machine
