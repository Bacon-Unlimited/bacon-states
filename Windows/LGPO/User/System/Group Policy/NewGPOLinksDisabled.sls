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
# LOCATION: \User\System\Group Policy\NewGPOLinksDisabled.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting allows you to create new Group Policy object links in the disabled state.
# 
# If you enable this setting, you can create all new Group Policy object links in the disabled state by default. After you configure and test the new object links by using a policy compliant Group Policy management tool such as  Active Directory Users and Computers or Active Directory Sites and Services, you can enable the object links for use on the system.
# 
# If you disable this setting or do not configure it, new Group Policy object links are created in the enabled state. If you do not want them to be effective until they are configured and tested, you must disable the object link.
Create new Group Policy Object links disabled by default:
  lgpo.set:
  - name: NewGPOLinksDisabled
  - setting: Enabled
  - policy_class: User
