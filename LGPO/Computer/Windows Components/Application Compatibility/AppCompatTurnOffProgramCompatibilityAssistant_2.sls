# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the state of the Program Compatibility Assistant (PCA).
#       
# The PCA monitors applications run by the user. When a potential compatibility issue with an application is detected, the PCA will prompt the user with recommended solutions.  To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics. 
# 
# If you enable this policy setting, the PCA will be turned off. The user will not be presented with solutions to known compatibility issues when running applications. Turning off the PCA can be useful for system administrators who require better performance and are already aware of application compatibility issues. 
# 
# If you disable or do not configure this policy setting, the PCA will be turned on. To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics.
# 
# Note: The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.
Turn off Program Compatibility Assistant:
  lgpo.set:
  - name: AppCompatTurnOffProgramCompatibilityAssistant_2
  - setting: Enabled
  - policy_class: Machine
