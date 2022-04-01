# VistaOr4
#
# This policy setting allows encrypted items to be indexed. If you enable this policy setting, indexing  will attempt to decrypt and index the content (access restrictions will still apply). If you disable this policy setting, the search service components (including non-Microsoft components) are expected not to index encrypted items or encrypted stores. This policy setting is not configured by default. If you do not configure this policy setting, the local setting, configured through Control Panel, will be used. By default, the Control Panel setting is set to not index encrypted content.  
# 
# When this setting is enabled or disabled, the index is rebuilt completely. 
# 
# Full volume encryption (such as BitLocker Drive Encryption or a non-Microsoft solution) must be used for the location of the index to maintain security for encrypted files.
Allow indexing of encrypted files:
  lgpo.set:
  - name: AllowIndexingEncryptedStoresOrItems
  - setting: Enabled
  - policy_class: Machine
