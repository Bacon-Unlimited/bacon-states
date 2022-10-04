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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictCalendarContact.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_NONVISTA
#
# Prevents users from changing the default programs for managing schedules and contacts.
# 
# If you enable this policy, the Calendar and Contact combo boxes appear dimmed in the Internet Programs area. To display these options, users open the Internet Options dialog box, and then click the Programs tab.
# 
# If you disable this policy or do not configure it, users can determine which programs to use for managing schedules and contacts, if programs that perform these tasks are installed.
# 
# This "Disable the Programs Page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel) takes precedence over this policy. If it is enabled, this policy is ignored.
Disable changing Calendar and Contact settings:
  lgpo.set:
  - name: RestrictCalendarContact
  - setting: Enabled
  - policy_class: User
