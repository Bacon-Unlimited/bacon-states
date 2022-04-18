# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether Windows should use the specified network path as the roaming user profile path for all users logging onto this computer.
# 
# To use this policy setting, type the path to the network share in the form \\Computername\Sharename\. It is recommended to use a path such as \\Computername\Sharename\%USERNAME% to give each user an individual profile folder. If not specified, all users logging onto this computer will use the same roaming profile folder as specified by this policy. You need to ensure that you have set the appropriate security on the folder to allow all users to access the profile.
# 
# If you enable this policy setting, all users logging on this computer will use the roaming profile path specified in this policy.
# 
# If you disable or do not configure this policy setting, users logging on this computer will use their local profile or standard roaming user profile.
# 
# Note: There are four ways to configure a roaming profile for a user. Windows reads profile configuration in the following order and uses the first configured policy setting it reads.
# 
# 1. Terminal Services roaming profile path specified by Terminal Services policy
# 2. Terminal Services roaming profile path specified by the user object
# 3. A per-computer roaming profile path specified in this policy
# 4. A per-user roaming profile path specified in the user object
Set roaming profile path for all users logging onto this computer:
  lgpo.set:
  - name: MachineProfilePath
  - setting:
      MachineProfilePath_Message: text-placeholder
  - policy_class: Machine
