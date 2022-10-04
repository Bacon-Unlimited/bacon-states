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
# LOCATION: \User\Windows Components\Internet Explorer\Browser menus\NoPrinting.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This policy setting allows you to manage whether users can access the Print menu. Starting with Windows 8, this policy setting also allows you to manage whether users can access the Print flyout for Internet Explorer and any printers under the Devices charm.
# 
# If you enable this policy setting, the Print menu in Internet Explorer will not be available. Starting with Windows 8, the Print flyout for Internet Explorer will not be available, and users will not see printers under the Devices charm.
# 
# If you disable or do not configure this policy setting, the Print menu in Internet Explorer will be available. Starting with Windows 8, the Print flyout for Internet Explorer will be available, and users will see installed printers under the Devices charm.
Turn off Print Menu:
  lgpo.set:
  - name: NoPrinting
  - setting: Enabled
  - policy_class: User
