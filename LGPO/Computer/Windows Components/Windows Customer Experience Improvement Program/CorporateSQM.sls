# windows:SUPPORTED_WindowsVista
#
# If you enable this setting all Customer Experience Improvement Program uploads are redirected to Microsoft Operations Manager server.
# 
# If you disable this setting uploads are not redirected to a Microsoft Operations Manager server.
# 
# If you do not configure this setting uploads are not redirected to a Microsoft Operations Manager server.
Allow Corporate redirection of Customer Experience Improvement uploads:
  lgpo.set:
  - name: CorporateSQM
  - setting:
      CorporateSQMURL: text-placeholder
  - policy_class: Machine
