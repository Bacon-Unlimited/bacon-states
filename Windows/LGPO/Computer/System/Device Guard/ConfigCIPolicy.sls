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
# LOCATION: \Computer\System\Device Guard\ConfigCIPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# Deploy Windows Defender Application Control
# 
# This policy setting lets you deploy a Code Integrity Policy to a machine to control what is allowed to run on that machine.
# 
# If you deploy a Code Integrity Policy, Windows will restrict what can run in both kernel mode and on the Windows Desktop based on the policy. To enable this policy the machine must be rebooted. 
# 
# The file path must be either a UNC path (for example, \\ServerName\ShareName\SIPolicy.p7b), or a locally valid path (for example, C:\FolderName\SIPolicy.p7b).  The local machine account (LOCAL SYSTEM) must have access permission to the policy file.
#  
# If using a signed and protected policy then disabling this policy setting doesn't remove the feature from the computer. Instead, you must either:
# 
#    1) first update the policy to a non-protected policy and then disable the setting, or
#    2) disable the setting and then remove the policy from each computer, with a physically present user.
#       
Deploy Windows Defender Application Control:
  lgpo.set:
  - name: ConfigCIPolicy
  - setting:
      ConfigCIPolicyFilePathText: text-placeholder
  - policy_class: Machine
