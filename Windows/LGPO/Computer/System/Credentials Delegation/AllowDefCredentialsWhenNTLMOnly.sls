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
# LOCATION: \Computer\System\Credentials Delegation\AllowDefCredentialsWhenNTLMOnly.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).
# 
# This policy setting applies when server authentication was achieved via NTLM.
# 
# If you enable this policy setting, you can specify the servers to which the user's default credentials can be delegated (default credentials are those that you use when first logging on to Windows).
# 
# If you disable or do not configure (by default) this policy setting, delegation of default credentials is not permitted to any machine.
# 
# Note: The "Allow delegating default credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated.  The use of a single wildcard character is permitted when specifying the SPN.
# 
# For Example:
# TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
# TERMSRV/* Remote Desktop Session Host running on all machines.
# TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com
Allow delegating default credentials with NTLM-only server authentication:
  lgpo.set:
  - name: AllowDefCredentialsWhenNTLMOnly
  - setting:
      AllowDefCredentialsWhenNTLMOnly_Name:
      - placeholder1
      - placeholder2
      ConcatenateDefaults_ADCN: boolean-placeholder
  - policy_class: Machine
