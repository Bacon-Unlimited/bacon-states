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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Intranet Zone\IZ_PolicyLogon_4.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage settings for logon options.
# 
# If you enable this policy setting, you can choose from the following logon options.
# 
# Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.
# 
# Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.
# 
# Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.
# 
# Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response is not supported by the server, the user is queried to provide the user name and password.
# 
# If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.
# 
# If you do not configure this policy setting, logon is set to Automatic logon only in Intranet zone.
Logon options:
  lgpo.set:
  - name: IZ_PolicyLogon_4
  - setting:
      IZ_Partname1A00: enum-placeholder
  - policy_class: User
