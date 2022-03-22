# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether or not software can simulate the Secure Attention Sequence (SAS).
# 
# If you enable this policy setting, you have one of four options:
# 
# If you set this policy setting to "None," user mode software cannot simulate the SAS.
# If you set this policy setting to "Services," services can simulate the SAS.
# If you set this policy setting to "Ease of Access applications," Ease of Access applications can simulate the SAS.
# If you set this policy setting to "Services and Ease of Access applications," both services and Ease of Access applications can simulate the SAS.
# 
# If you disable or do not configure this setting, only Ease of Access applications running on the secure desktop can simulate the SAS.
Disable or enable software Secure Attention Sequence:
  lgpo.set:
  - name: SoftwareSASGeneration
  - setting:
      SoftwareSASGenerationDescription: enum-placeholder
  - policy_class: Machine
