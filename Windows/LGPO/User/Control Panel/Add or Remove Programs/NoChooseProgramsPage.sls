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
# LOCATION: \User\Control Panel\Add or Remove Programs\NoChooseProgramsPage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Removes the Set Program Access and Defaults button from the Add or Remove Programs bar.  As a result, users cannot view or change the associated page.
# 
# The Set Program Access and Defaults button lets administrators specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.
# 
# If you disable this setting or do not configure it, the Set Program Access and Defaults button is available to all users.
# 
# This setting does not prevent users from using other tools and methods to change program access or defaults.
# 
# This setting does not prevent the Set Program Access and Defaults icon from appearing on the Start menu.  See the "Remove Set Program Access and Defaults from Start menu" setting.
Hide the Set Program Access and Defaults page:
  lgpo.set:
  - name: NoChooseProgramsPage
  - setting: Enabled
  - policy_class: User
