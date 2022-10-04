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
# LOCATION: \Computer\System\KDC\emitlili.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether the domain controller provides information about previous logons to client computers.
# 
# If you enable this policy setting, the domain controller provides the information message about previous logons.
# 
# For Windows Logon to leverage this feature, the "Display information about previous logons during user logon" policy setting located in the Windows Logon Options node under Windows Components also needs to be enabled.
# 
# If you disable or do not configure this policy setting, the domain controller does not provide information about previous logons unless the "Display information about previous logons during user logon" policy setting is enabled.
# 
# Note: Information about previous logons is provided only if the domain functional level is Windows Server 2008. In domains with a domain functional level of Windows Server 2003, Windows 2000 native, or Windows 2000 mixed, domain controllers cannot provide information about previous logons, and enabling this policy setting does not affect anything.
# 
Provide information about previous logons to client computers:
  lgpo.set:
  - name: emitlili
  - setting: Enabled
  - policy_class: Machine
