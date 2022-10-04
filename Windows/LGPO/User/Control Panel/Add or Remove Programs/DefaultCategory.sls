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
# LOCATION: \User\Control Panel\Add or Remove Programs\DefaultCategory.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Specifies the category of programs that appears when users open the "Add New Programs" page.
# 
# If you enable this setting, only the programs in the category you specify are displayed when the "Add New Programs" page opens. Users can use the Category box on the "Add New Programs" page to display programs in other categories.
# 
# To use this setting, type the name of a category in the Category box for this setting. You must enter a category that is already defined in Add or Remove Programs. To define a category, use Software Installation.
# 
# If you disable this setting or do not configure it, all programs (Category: All) are displayed when the "Add New Programs" page opens.
# 
# You can use this setting to direct users to the programs they are most likely to need.
# 
# Note: This setting is ignored if either the "Remove Add or Remove Programs" setting or the "Hide Add New Programs page" setting is enabled.
Specify default category for Add New Programs:
  lgpo.set:
  - name: DefaultCategory
  - setting:
      DefaultCategoryBox: text-placeholder
  - policy_class: User
