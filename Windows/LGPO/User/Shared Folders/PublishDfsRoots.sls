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
# LOCATION: \User\Shared Folders\PublishDfsRoots.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines whether the user can publish DFS roots in Active Directory Domain Services (AD DS).
# 
# If you enable or do not configure this policy setting, users can use the "Publish in Active Directory" option to publish DFS roots as shared folders in AD DS .
# 
# If you disable this policy setting, users cannot publish DFS roots in AD DS and the "Publish in Active Directory" option is disabled. Note: The default is to allow shared folders to be published when this setting is not configured.
Allow DFS roots to be published:
  lgpo.set:
  - name: PublishDfsRoots
  - setting: Enabled
  - policy_class: User
