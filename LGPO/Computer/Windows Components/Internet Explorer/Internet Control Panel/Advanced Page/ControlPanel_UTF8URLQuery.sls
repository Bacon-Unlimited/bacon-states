# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer uses 8-bit Unicode Transformation Format (UTF-8) to encode query strings in URLs before sending them to servers or to proxy servers.
# 
# If you enable this policy setting, you must specify when to use UTF-8 to encode query strings:
#     0) Never encode query strings.
#     1) Only encode query strings for URLs that aren't in the Intranet zone.
#     2) Only encode query strings for URLs that are in the Intranet zone.
#     3) Always encode query strings.
# 
# If you disable or don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer Advanced Options settings. The default is to encode all query strings in UTF-8.
Turn off sending UTF-8 query strings for URLs:
  lgpo.set:
  - name: ControlPanel_UTF8URLQuery
  - setting:
      SelectUTF8URLQueryBehavior: enum-placeholder
  - policy_class: Machine
