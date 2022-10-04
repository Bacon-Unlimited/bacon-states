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
# LOCATION: \Computer\Windows Components\Backup\Server\DisallowOpticalMediaAsBackupTarget.sls
#
# SUPPORTED WINDOWS OS
# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether backups of a machine can run to an optical media or not.
# 
# If you enable this policy setting, machine administrator/backup operator cannot use Windows Server Backup to run backups to an optical media.
# 
# If you disable or do not configure this policy setting, there is no restriction on optical media being backup target.
Disallow optical media as backup target:
  lgpo.set:
  - name: DisallowOpticalMediaAsBackupTarget
  - setting: Enabled
  - policy_class: Machine
