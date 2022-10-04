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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\AJAX\IESF_MaxConnectionPer1_0Server.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to change the default connection limit for HTTP 1.0 from 6 connections per host to a limit of your choice (from 2 through 128).
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default connection limit for HTTP 1.0 (6 connections per host).
# 
# In versions of Internet Explorer prior to Internet Explorer 8, the default connection limit for HTTP 1.0 was 4.
Maximum number of connections per server (HTTP 1.0):
  lgpo.set:
  - name: IESF_MaxConnectionPer1_0Server
  - setting:
      IESF_MaxConnections: decimal-placeholder
  - policy_class: Machine
