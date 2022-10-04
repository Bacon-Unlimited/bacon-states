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
# LOCATION: \Computer\Network\Network Isolation\WF_NetIsolation_EnterpriseCloudResources.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 
# A pipe-separated list of domain cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address.
# 
# Contains a list of Enterprise resource domains hosted in the cloud. Connections to these resources are considered connections to enterprise networks.
# 
# If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the Intranet proxy servers for apps policy.
# 
# Example: [cloudresource]|[cloudresource]|[cloudresource],[proxy]|[cloudresource]|[cloudresource],[proxy]|
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Enterprise resource domains hosted in the cloud:
  lgpo.set:
  - name: WF_NetIsolation_EnterpriseCloudResources
  - setting:
      WF_NetIsolation_EnterpriseCloudResourcesBox: text-placeholder
  - policy_class: Machine
