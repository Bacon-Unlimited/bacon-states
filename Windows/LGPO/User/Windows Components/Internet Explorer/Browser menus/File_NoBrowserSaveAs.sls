# SUPPORTED_IE5
#
# Prevents users from saving Web pages from the browser File menu to their hard disk or to a network share.
# 
# If you enable this policy, the Save As command on the File menu will be removed.
# 
# If you disable this policy or do not configure it, users can save Web pages for later viewing.
# 
# This policy takes precedence over the "File Menu: Disable Save As Web Page Complete" policy, which prevents users from saving the entire contents that are displayed or run from a Web Page, such as graphics, scripts, and linked files, but does not prevent users from saving the text of a Web page.
# 
# Caution: If you enable this policy, users are not prevented from saving Web content by pointing to a link on a Web page, clicking the right mouse button, and then clicking Save Target As.
'File menu: Disable Save As... menu option':
  lgpo.set:
  - name: File_NoBrowserSaveAs
  - setting: Enabled
  - policy_class: User
