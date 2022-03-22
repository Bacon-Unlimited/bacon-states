# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows Hello for Business automatically provides smart card emulation for compatibility with smart card enabled applications.
# 
# If you enable this policy setting, Windows Hello for Business provisions Windows Hello for Business credentials that are not compatible with smart card applications.
# 
# If you disable or do not configure this policy setting, Windows Hello for Business provisions Windows Hello for Business credentials compatible with smart card applications.
# 
# NOTE: This policy affects Windows Hello for Business credentials at the time of creation. Credentials created before the application of this policy continue to provide smart card emulation. To change an existing credential, enable this policy setting and select "I forgot my PIN" from Settings.
#         
Turn off smart card emulation:
  lgpo.set:
  - name: MSPassport_DisableSmartCardNode
  - setting: Enabled
  - policy_class: Machine
