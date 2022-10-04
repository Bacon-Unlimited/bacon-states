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
# LOCATION: \Computer\Windows Components\Windows Logon Options\SoftwareSASGeneration.sls
#
# SUPPORTED WINDOWS OS
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
