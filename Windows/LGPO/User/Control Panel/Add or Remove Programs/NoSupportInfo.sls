####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Control Panel\Add or Remove Programs\NoSupportInfo.sls
#
# SUPPORTED WINDOWS OS
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
