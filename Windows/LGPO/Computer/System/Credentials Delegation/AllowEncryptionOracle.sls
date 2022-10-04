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
# LOCATION: \Computer\System\Credentials Delegation\AllowEncryptionOracle.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Encryption Oracle Remediation
# 
# This policy setting applies to applications using the CredSSP component (for example: Remote Desktop Connection).
# 
# Some versions of the CredSSP protocol are vulnerable to an encryption oracle attack against the client.  This policy controls compatibility with vulnerable clients and servers.  This policy allows you to set the level of protection desired for the encryption oracle vulnerability.
# 
# If you enable this policy setting, CredSSP version support will be selected based on the following options:
# 
# Force Updated Clients: Client applications which use CredSSP will not be able to fall back to the insecure versions and services using CredSSP will not accept unpatched clients. Note: this setting should not be deployed until all remote hosts support the newest version.
# 
# Mitigated: Client applications which use CredSSP will not be able to fall back to the insecure version but services using CredSSP will accept unpatched clients. See the link below for important information about the risk posed by remaining unpatched clients.
# 
# Vulnerable: Client applications which use CredSSP will expose the remote servers to attacks by supporting fall back to the insecure versions and services using CredSSP will accept unpatched clients.
# 
# For more information about the vulnerability and servicing requirements for protection, see https://go.microsoft.com/fwlink/?linkid=866660
Encryption Oracle Remediation:
  lgpo.set:
  - name: AllowEncryptionOracle
  - setting:
      AllowEncryptionOracleDrop: enum-placeholder
  - policy_class: Machine
