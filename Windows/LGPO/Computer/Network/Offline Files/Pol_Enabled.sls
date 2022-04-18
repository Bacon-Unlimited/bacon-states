# windows:SUPPORTED_Win2k
#
# This policy setting determines whether the Offline Files feature is enabled. Offline Files saves a copy of network files on the user's computer for use when the computer is not connected to the network.
# 
# If you enable this policy setting, Offline Files is enabled and users cannot disable it.
# 
# If you disable this policy setting, Offline Files is disabled and users cannot enable it.
# 
# If you do not configure this policy setting, Offline Files is enabled on Windows client computers, and disabled on computers running Windows Server, unless changed by the user.
# 
# Note: Changes to this policy setting do not take effect until the affected computer is restarted.
Allow or Disallow use of the Offline Files feature:
  lgpo.set:
  - name: Pol_Enabled
  - setting: Enabled
  - policy_class: Machine
