# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the code download path for each computer. The Internet Component Download service exposes a function that is called by an application to download, verify, and install code for an Object Linking and Embedding (OLE) component.
# 
# If you enable this policy setting, the user cannot specify the download path for the code. You must specify the download path.
# 
# If you disable or do not configure this policy setting, the user can specify the download path for the code.
Prevent specifying the code download path for each computer:
  lgpo.set:
  - name: CodeDownloadPol
  - setting:
      Path: text-placeholder
  - policy_class: Machine
