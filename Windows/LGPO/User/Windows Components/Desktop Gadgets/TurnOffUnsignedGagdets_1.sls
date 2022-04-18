# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to restrict the installation of unsigned gadgets.  Desktop gadgets can be deployed as compressed  files, either digitally signed or unsigned.
# If you enable this setting, gadgets that have not been digitally signed will not be extracted.
# 
# If you disable or do not configure this setting, both signed and unsigned gadgets will be extracted.
# The default is for Windows to extract both signed and unsigned gadgets.
Restrict unpacking and installation of gadgets that are not digitally signed.:
  lgpo.set:
  - name: TurnOffUnsignedGagdets_1
  - setting: Enabled
  - policy_class: User
