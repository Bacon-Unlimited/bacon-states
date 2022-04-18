# SUPPORTED_IE5
#
# Prevents users from saving the complete contents that are displayed on or run from a Web page, including the graphics, scripts, linked files, and other elements. It does not prevent users from saving the text of a Web page.
# 
# If you enable this policy, the Web Page, Complete file type option will be removed from the Save as Type box in the Save Web Page dialog box. Users can still save Web pages as hypertext markup language (HTML) files or as text files, but graphics, scripts, and other elements are not saved. To display the Save Web Page dialog box, users click the File menu, and then click the Save As command.
# 
# If you disable this policy or do not configure it, users can save all elements on a Web page.
# 
# The "File menu: Disable Save As... menu option" policy, which removes the Save As command, takes precedence over this policy. If it is enabled, this policy is ignored.
'File menu: Disable Save As Web Page Complete':
  lgpo.set:
  - name: File_NoBrowserSaveWebComplete
  - setting: Enabled
  - policy_class: User
