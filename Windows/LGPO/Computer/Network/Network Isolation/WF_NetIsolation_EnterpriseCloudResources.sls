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
