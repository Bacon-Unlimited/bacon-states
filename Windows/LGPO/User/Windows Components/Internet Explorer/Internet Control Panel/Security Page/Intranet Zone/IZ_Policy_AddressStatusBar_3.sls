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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_Policy_AddressStatusBar_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting controls whether websites can open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you enable this policy setting, websites can open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you disable this policy setting, websites cannot open new Internet Explorer windows that have no status bar or Address bar.
# 
# If you do not configure this policy setting, the user can choose whether websites can open new Internet Explorer Windows that have no status bar or Address bar.
Allow websites to open windows without status bar or Address bar:
  lgpo.set:
  - name: IZ_Policy_AddressStatusBar_3
  - setting:
      IZ_Partname2104: enum-placeholder
  - policy_class: User
