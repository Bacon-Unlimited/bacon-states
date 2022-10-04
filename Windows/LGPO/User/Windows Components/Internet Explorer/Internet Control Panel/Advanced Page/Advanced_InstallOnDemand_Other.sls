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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_InstallOnDemand_Other.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting allows you to manage whether users can download and install self-installing program files (non-Internet Explorer components) that are registered with Internet Explorer (such as Macromedia and Java) that are required in order to view web pages as intended.
# 
# If you enable this policy setting, non-Internet Explorer components will be automatically installed as necessary.
# 
# If you disable this policy setting, users will be prompted when non-Internet Explorer components would be installed.
# 
# If you do not configure this policy setting, non-Internet Explorer components will be automatically installed as necessary.
Allow Install On Demand (except Internet Explorer):
  lgpo.set:
  - name: Advanced_InstallOnDemand_Other
  - setting: Enabled
  - policy_class: User
