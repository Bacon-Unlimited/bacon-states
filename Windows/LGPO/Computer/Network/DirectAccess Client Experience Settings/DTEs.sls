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
# LOCATION: \Computer\Network\DirectAccess Client Experience Settings\DTEs.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies the IPv6 addresses of the endpoints of the Internet Protocol security (IPsec) tunnels that enable DirectAccess. NCA attempts to access the resources that are specified in the Corporate Resources setting through these configured tunnel endpoints. 
# 
# By default, NCA uses the same DirectAccess server that the DirectAccess client computer connection is using. In default configurations of DirectAccess, there are typically two IPsec tunnel endpoints: one for the infrastructure tunnel and one for the intranet tunnel. You should configure one endpoint for each tunnel. 
# 	  
# Each entry consists of the text PING: followed by the IPv6 address of an IPsec tunnel endpoint. Example: PING:2002:836b:1::836b:1.
# 
# You must configure this setting to have complete NCA functionality.
# 
IPsec Tunnel Endpoints:
  lgpo.set:
  - name: DTEs
  - setting:
      DTEs_Control:
      - placeholder1
      - placeholder2
  - policy_class: Machine
