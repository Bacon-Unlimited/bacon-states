# windows:SUPPORTED_WindowsPreVista
#
# Removes links to the Support Info dialog box from programs on the Change or Remove Programs page.
# 
# Programs listed on the Change or Remove Programs page can include a "Click here for support information" hyperlink. When clicked, the hyperlink opens a dialog box that displays troubleshooting information, including a link to the installation files and data that users need to obtain product support, such as the Product ID and version number of the program. The dialog box also includes a hyperlink to support information on the Internet, such as the Microsoft Product Support Services Web page.
# 
# If you disable this setting or do not configure it, the Support Info hyperlink appears.
# 
# Note: Not all programs provide a support information hyperlink.
Remove Support Information:
  lgpo.set:
  - name: NoSupportInfo
  - setting: Enabled
  - policy_class: User
