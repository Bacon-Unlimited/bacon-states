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
# LOCATION: \User\System\Group Policy\NewGPODisplayName.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows you to set the default display name for new Group Policy objects.
# 
# This setting allows you to specify the default name for new Group Policy objects created from policy compliant Group Policy Management tools including the Group Policy tab in Active Directory tools and the GPO browser.
# 
# The display name can contain environment variables and can be a maximum of 255 characters long.
# 
# If this setting is Disabled or Not Configured, the default display name of New Group Policy object is used.
Set default name for new Group Policy objects:
  lgpo.set:
  - name: NewGPODisplayName
  - setting:
      NewGPODisplayNameHeading: text-placeholder
  - policy_class: User
