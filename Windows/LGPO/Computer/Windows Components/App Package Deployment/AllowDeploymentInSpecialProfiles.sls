# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage the deployment of Windows Store apps when the user is signed in using a special profile. Special profiles are the following user profiles, where changes are discarded after the user signs off:
# 
# Roaming user profiles to which the "Delete cached copies of roaming profiles" Group Policy setting applies
# 
# Mandatory user profiles and super-mandatory profiles, which are created by an administrator
# 
# Temporary user profiles, which are created when an error prevents the correct profile from loading
# 
# User profiles for the Guest account and members of the Guests group
# 
# 
# If you enable this policy setting, Group Policy allows deployment operations (adding, registering, staging, updating, or removing an app package) of Windows Store apps when using a special profile.
# 
# If you disable or do not configure this policy setting, Group Policy blocks deployment operations of Windows Store apps when using a special profile.
Allow deployment operations in special profiles:
  lgpo.set:
  - name: AllowDeploymentInSpecialProfiles
  - setting: Enabled
  - policy_class: Machine
