# windows:SUPPORTED_WindowsVista
#
# This policy setting configures secure access to UNC paths.
# 
# If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.
# 
Hardened UNC Paths:
  lgpo.set:
  - name: Pol_HardenedPaths
  - setting:
      Pol_HardenedPaths:
      - placeholder1
      - placeholder2
  - policy_class: Machine
