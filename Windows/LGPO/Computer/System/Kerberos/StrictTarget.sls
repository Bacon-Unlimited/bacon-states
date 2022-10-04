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
# LOCATION: \Computer\System\Kerberos\StrictTarget.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
#  This policy setting allows you to configure this server so that Kerberos can decrypt a ticket that contains this system-generated SPN. When an application attempts to make a remote procedure call (RPC) to this server with a NULL value for the service principal name (SPN), computers running Windows 7 or later attempt to use Kerberos by generating an SPN.
#               
# If you enable this policy setting, only services running as LocalSystem or NetworkService are allowed to accept these connections. Services running as identities different from LocalSystem or NetworkService might fail to authenticate.
# 
# If you disable or do not configure this policy setting, any service is allowed to accept incoming connections by using this system-generated SPN.
Require strict target SPN match on remote procedure calls:
  lgpo.set:
  - name: StrictTarget
  - setting: Enabled
  - policy_class: Machine
