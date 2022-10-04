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
# LOCATION: \Computer\System\Net Logon\Netlogon_NetlogonShareCompatibilityMode.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy setting controls whether or not the Netlogon share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.
# 
# If you enable this policy setting, the Netlogon share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.
# 
# If you disable or do not configure this policy setting, the Netlogon share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.
# 
# By default, the Netlogon share will grant shared read access to files on the share when exclusive access is requested.
# 
# Note: The Netlogon share is a share created by the Net Logon service for use by client machines in the domain. The default behavior of the Netlogon share ensures that no application with only read permission to files on the Netlogon share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the Netlogon share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the Netlogon share on the domain will be decreased.
# 
# If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.
Set Netlogon share compatibility:
  lgpo.set:
  - name: Netlogon_NetlogonShareCompatibilityMode
  - setting: Enabled
  - policy_class: Machine
