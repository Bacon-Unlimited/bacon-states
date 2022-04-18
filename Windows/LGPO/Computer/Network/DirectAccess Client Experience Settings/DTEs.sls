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
