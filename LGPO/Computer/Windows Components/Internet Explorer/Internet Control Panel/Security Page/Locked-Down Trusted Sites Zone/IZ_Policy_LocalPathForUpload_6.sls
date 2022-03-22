# SUPPORTED_IE7
#
# This policy setting controls whether or not local path information is sent when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.
# 
# If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.
# 
# If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.
# 
# If you do not configure this policy setting, the user can choose whether path information is sent when he or she is uploading a file via an HTML form. By default, path information is sent.
Include local path when user is uploading files to a server:
  lgpo.set:
  - name: IZ_Policy_LocalPathForUpload_6
  - setting:
      IZ_Partname160A: enum-placeholder
  - policy_class: Machine
