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
# LOCATION: \Computer\System\Kerberos\KdcProxyServer.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting configures the Kerberos client's mapping to KDC proxy servers for domains based on their DNS suffix names.
# 
# If you enable this policy setting, the Kerberos client will use the KDC proxy server for a domain when a domain controller cannot be located based on the configured mappings. To map a KDC proxy server to a domain, enable the policy setting, click Show, and then map the KDC proxy server name(s) to the DNS name for the domain using the syntax described in the options pane. In the Show Contents dialog box in the Value Name column, type a DNS suffix name. In the Value column, type the list of proxy servers using the appropriate syntax format. To view the list of mappings, enable the policy setting and then click the Show button. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.
# 
# If you disable or do not configure this policy setting, the Kerberos client does not have KDC proxy servers settings defined by Group Policy.
# 
Specify KDC proxy servers for Kerberos clients:
  lgpo.set:
  - name: KdcProxyServer
  - setting:
      KdcProxyServer:
      - placeholder1
      - placeholder2
  - policy_class: Machine
