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
# LOCATION: \User\Windows Components\Network Sharing\NoInplaceSharing.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether users can share files within their profile. By default users are allowed to share files within their profile to other users on their network after an administrator opts in the computer.  An administrator can opt in the computer by using the sharing wizard to share a file within their profile.
# 
# If you enable this policy setting, users cannot share files within their profile using the sharing wizard.  Also, the sharing wizard cannot create a share at %root%\users and can only be used to create SMB shares on folders.
# 
# If you disable or don't configure this policy setting, users can share files out of their user profile after an administrator has opted in the computer.
Prevent users from sharing files within their profile.:
  lgpo.set:
  - name: NoInplaceSharing
  - setting: Enabled
  - policy_class: User
