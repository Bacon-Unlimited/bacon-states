# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage MIME sniffing for file promotion from one type to another based on a MIME sniff. A MIME sniff is the recognition by Internet Explorer of the file type based on a bit signature.
# 
# If you enable this policy setting, the MIME Sniffing Safety Feature will not apply in this zone. The security zone will run without the added layer of security provided by this feature.
# 
# If you disable this policy setting, the actions that may be harmful cannot run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.
# 
# If you do not configure this policy setting, the MIME Sniffing Safety Feature will not apply in this zone.
Enable MIME Sniffing:
  lgpo.set:
  - name: IZ_PolicyMimeSniffingURLaction_9
  - setting:
      IZ_Partname2100: enum-placeholder
  - policy_class: Machine
