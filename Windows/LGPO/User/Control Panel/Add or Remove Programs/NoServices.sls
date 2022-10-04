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
# LOCATION: \User\Control Panel\Add or Remove Programs\NoServices.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from using Add or Remove Programs to configure installed services.
# 
# This setting removes the "Set up services" section of the Add/Remove Windows Components page. The "Set up services" section lists system services that have not been configured and offers users easy access to the configuration tools.
# 
# If you disable this setting or do not configure it, "Set up services" appears only when there are unconfigured system services. If you enable this setting, "Set up services" never appears.
# 
# This setting does not prevent users from using other methods to configure services.
# 
# Note: When "Set up services" does not appear, clicking the Add/Remove Windows Components button starts the Windows Component Wizard immediately. Because the only remaining option on the Add/Remove Windows Components page starts the wizard, that option is selected automatically, and the page is bypassed.
# 
# To remove "Set up services" and prevent the Windows Component Wizard from starting, enable the "Hide Add/Remove Windows Components page" setting. If the "Hide Add/Remove Windows Components page" setting is enabled, this setting is ignored.
Go directly to Components Wizard:
  lgpo.set:
  - name: NoServices
  - setting: Enabled
  - policy_class: User
