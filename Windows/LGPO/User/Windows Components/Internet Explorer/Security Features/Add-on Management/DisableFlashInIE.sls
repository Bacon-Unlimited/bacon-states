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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Add-on Management\DisableFlashInIE.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10WIN8
#
# This policy setting turns off Adobe Flash in Internet Explorer and prevents applications from using Internet Explorer technology to instantiate Flash objects.
# 
# If you enable this policy setting, Flash is turned off for Internet Explorer, and applications cannot use Internet Explorer technology to instantiate Flash objects. In the Manage Add-ons dialog box, the Flash status will be 'Disabled', and users cannot enable Flash. If you enable this policy setting, Internet Explorer will ignore settings made for Adobe Flash through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings.
# 
# If you disable, or do not configure this policy setting, Flash is turned on for Internet Explorer, and applications can use Internet Explorer technology to instantiate Flash objects. Users can enable or disable Flash in the Manage Add-ons dialog box.
# 
# Note that Adobe Flash can still be disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings, even if this policy setting is disabled, or not configured. However, if Adobe Flash is disabled through the "Add-on List" and "Deny all add-ons unless specifically allowed in the Add-on List" policy settings and not through this policy setting, all applications that use Internet Explorer technology to instantiate Flash object can still do so. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.
? Turn off Adobe Flash in Internet Explorer and prevent applications from using Internet
  Explorer technology to instantiate Flash objects
: lgpo.set:
  - name: DisableFlashInIE
  - setting: Enabled
  - policy_class: User
