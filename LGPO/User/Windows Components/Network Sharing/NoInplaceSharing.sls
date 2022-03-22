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
