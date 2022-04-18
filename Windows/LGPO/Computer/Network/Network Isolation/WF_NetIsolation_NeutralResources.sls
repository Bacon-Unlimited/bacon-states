# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 
# A comma-separated list of domain names that can be used as both work or personal resource.
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Domains categorized as both work and personal:
  lgpo.set:
  - name: WF_NetIsolation_NeutralResources
  - setting:
      WF_NetIsolation_NeutralResourcesBox: text-placeholder
  - policy_class: Machine
