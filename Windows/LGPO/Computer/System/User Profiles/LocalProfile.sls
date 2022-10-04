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
# LOCATION: \Computer\System\User Profiles\LocalProfile.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting determines if roaming user profiles are available on a particular computer. By default, when roaming profile users log on to a computer, their roaming profile is copied down to the local computer. If they have already logged on to this computer in the past, the roaming profile is merged with the local profile. Similarly, when the user logs off this computer, the local copy of their profile, including any changes they have made, is merged with the server copy of their profile.
# 
# Using the setting, you can prevent users configured to use roaming profiles from receiving their profile on a specific computer.
# 
# If you enable this setting, the following occurs on the affected computer: At first logon, the user receives a new local  profile, rather than the roaming profile. At logoff, changes are saved to the local profile. All subsequent logons use the local profile. 
# 
# If you disable this setting or do not configure it, the default behavior occurs, as indicated above.
# 
# If you enable both the "Prevent Roaming Profile changes from propagating to the server" setting and the "Only allow local user profiles" setting, roaming profiles are disabled.
# 
# Note: This setting only affects roaming profile users.
Only allow local user profiles:
  lgpo.set:
  - name: LocalProfile
  - setting: Enabled
  - policy_class: Machine
