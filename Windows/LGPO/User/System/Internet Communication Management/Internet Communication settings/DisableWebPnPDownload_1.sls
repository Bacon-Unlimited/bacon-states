# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting specifies whether to allow this client to download print driver packages over HTTP.
# 
# To set up HTTP printing, non-inbox drivers need to be downloaded over HTTP.
# 
# Note: This policy setting does not prevent the client from printing to printers on the Intranet or the Internet over HTTP.  It only prohibits downloading drivers that are not already installed locally.
# 
# If you enable this policy setting, print drivers cannot be downloaded over HTTP.
# 
# If you disable or do not configure this policy setting, users can download print drivers over HTTP.
Turn off downloading of print drivers over HTTP:
  lgpo.set:
  - name: DisableWebPnPDownload_1
  - setting: Enabled
  - policy_class: User
