# windows:SUPPORTED_Windows_10_0_RS6
#
# This policy setting allows you to define the security intelligence location for VDI-configured computers. 
# 
#     If you disable or do not configure this setting, security intelligence will be referred from the default local source.
Define security intelligence location for VDI clients.:
  lgpo.set:
  - name: SignatureUpdate_SharedSignaturesLocation
  - setting:
      SignatureUpdate_SharedSignaturesLocation: text-placeholder
  - policy_class: Machine
