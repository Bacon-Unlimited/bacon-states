# windows:SUPPORTED_Windows8
#
# This policy setting configures the Program Compatibility Assistant (PCA) to diagnose failures with application and driver compatibility. 
# 
# If you enable this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues. When failures are detected, the PCA will provide options to run the application in a compatibility mode or get help online through a Microsoft website.
# 
# If you disable this policy setting, the PCA does not detect compatibility issues for applications and drivers.
# 
# If you do not configure this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues.
# 
# Note: This policy setting has no effect if the "Turn off Program Compatibility Assistant" policy setting is enabled. The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.
Detect compatibility issues for applications and drivers:
  lgpo.set:
  - name: DisablePcaUIPolicy
  - setting: Enabled
  - policy_class: Machine
