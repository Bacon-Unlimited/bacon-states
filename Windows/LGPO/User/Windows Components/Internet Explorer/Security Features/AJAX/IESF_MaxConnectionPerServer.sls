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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\AJAX\IESF_MaxConnectionPerServer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to change the default connection limit for HTTP 1.1 from 6 connections per host to a limit of your choice (from 2 through 128).
# 
# If you enable this policy setting, Internet Explorer uses the connection limit of your choice for HTTP 1.1.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the default connection limit for HTTP 1.1 (6 connections per host).
# 
# In versions of Internet Explorer before Internet Explorer 8, the default connection limit for HTTP 1.1 was 2.
Change the maximum number of connections per host (HTTP 1.1):
  lgpo.set:
  - name: IESF_MaxConnectionPerServer
  - setting:
      IESF_MaxConnections: decimal-placeholder
  - policy_class: User
