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
