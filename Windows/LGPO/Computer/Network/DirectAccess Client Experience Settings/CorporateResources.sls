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
# LOCATION: \Computer\Network\DirectAccess Client Experience Settings\CorporateResources.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies resources on your intranet that are normally accessible to DirectAccess clients. Each entry is a string that identifies the type of resource and the location of the resource. 
# 
# Each string can be one of the following types:
# 	  
# -  A DNS name or IPv6 address that NCA pings. The syntax is PING: followed by a fully qualified domain name (FQDN) that resolves to an IPv6 address, or an IPv6 address. Examples: PING:myserver.corp.contoso.com or PING:2002:836b:1::1. 
#  
# Note 
# 
# We recommend that you use FQDNs instead of IPv6 addresses wherever possible.
# 
# Important 
# 
# At least one of the entries must be a PING: resource.
# 
# -	A Uniform Resource Locator (URL) that NCA queries with a Hypertext Transfer Protocol (HTTP) request. The contents of the web page do not matter. The syntax is HTTP: followed by a URL. The host portion of the URL must resolve to an IPv6 address of a Web server or contain an IPv6 address. Examples: HTTP:http://myserver.corp.contoso.com/ or HTTP:http://2002:836b:1::1/.
# 
# -	A Universal Naming Convention (UNC) path to a file that NCA checks for existence. The contents of the file do not matter. The syntax is FILE: followed by a UNC path. The ComputerName portion of the UNC path must resolve to an IPv6 address or contain an IPv6 address. Examples: FILE:\\myserver\myshare\test.txt or FILE:\\2002:836b:1::1\myshare\test.txt.
# 
# You must configure this setting to have complete NCA functionality.
# 
Corporate Resources:
  lgpo.set:
  - name: CorporateResources
  - setting:
      CorporateResources_Control:
      - placeholder1
      - placeholder2
  - policy_class: Machine
