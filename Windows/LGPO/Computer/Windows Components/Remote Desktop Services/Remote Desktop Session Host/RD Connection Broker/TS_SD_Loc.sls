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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker\TS_SD_Loc.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsNET_Enterprise
#
# This policy setting allows you to specify the RD Connection Broker server that the RD Session Host server uses to track and redirect user sessions for a load-balanced RD Session Host server farm. The specified server must be running the Remote Desktop Connection Broker service. All RD Session Host servers in a load-balanced farm should use the same RD Connection Broker server.
# 
# If you enable this policy setting, you must specify the RD Connection Broker server by using its fully qualified domain name (FQDN). In Windows Server 2012, for a high availability setup with multiple RD Connection Broker servers, you must provide a semi-colon separated list of the FQDNs of all the RD Connection Broker servers.
# 
# If you disable or do not configure this policy setting, the policy setting is not specified at the Group Policy level.
# 
# Notes:
# 
#      1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
# 
#      2. This policy setting is not effective unless the Join RD Connection Broker policy setting is enabled.
# 
#      3. To be an active member of an RD Session Host server farm, the computer account for each RD Session Host server in the farm must be a member of one of the following local groups on the RD Connection Broker server: Session Directory Computers, Session Broker Computers, or RDS Endpoint Servers.
# 
# 
Configure RD Connection Broker server name:
  lgpo.set:
  - name: TS_SD_Loc
  - setting:
      TS_SD_Loc: text-placeholder
  - policy_class: Machine
