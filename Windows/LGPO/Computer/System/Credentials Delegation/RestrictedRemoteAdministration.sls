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
# LOCATION: \Computer\System\Credentials Delegation\RestrictedRemoteAdministration.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# When running in Restricted Admin or Remote Credential Guard mode, participating apps do not expose signed in or supplied credentials to a remote host. Restricted Admin limits access to resources located on other servers or networks from the remote host because credentials are not delegated. Remote Credential Guard does not limit access to resources because it redirects all requests back to the client device.
# 
# Participating apps:
# Remote Desktop Client
# 
# If you enable this policy setting, the following options are supported:
# 
# Restrict credential delegation: Participating applications must use Restricted Admin or Remote Credential Guard to connect to remote hosts.
# 
# Require Remote Credential Guard: Participating applications must use Remote Credential Guard to connect to remote hosts.
# 
# Require Restricted Admin: Participating applications must use Restricted Admin to connect to remote hosts.
# 
# If you disable or do not configure this policy setting, Restricted Admin and Remote Credential Guard mode are not enforced and participating apps can delegate credentials to remote devices.
# 
# Note: To disable most credential delegation, it may be sufficient to deny delegation in Credential Security Support Provider (CredSSP) by modifying Administrative template settings (located at Computer Configuration\Administrative Templates\System\Credentials Delegation).
# 
# Note: On Windows 8.1 and Windows Server 2012 R2, enabling this policy will enforce Restricted Administration mode, regardless of the mode chosen. These versions do not support Remote Credential Guard.
# 
Restrict delegation of credentials to remote servers:
  lgpo.set:
  - name: RestrictedRemoteAdministration
  - setting:
      RestrictedRemoteAdministrationDrop: enum-placeholder
  - policy_class: Machine
