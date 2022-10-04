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
# LOCATION: \Computer\Printers\AutoPublishing.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether the Add Printer Wizard automatically publishes the computer's shared printers in Active Directory.
# 
#       If you enable this setting or do not configure it, the Add Printer Wizard automatically publishes all shared printers.
# 
#       If you disable this setting, the Add Printer Wizard does not automatically publish printers. However, you can publish shared printers manually.
# 
#       The default behavior is to automatically publish shared printers in Active Directory.
# 
#       Note: This setting is ignored if the "Allow printers to be published" setting is disabled.
Automatically publish new printers in Active Directory:
  lgpo.set:
  - name: AutoPublishing
  - setting: Enabled
  - policy_class: Machine
