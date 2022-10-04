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
# LOCATION: \Computer\Windows Components\App Package Deployment\AllowDeploymentInSpecialProfiles.sls
#
# SUPPORTED WINDOWS OS
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
