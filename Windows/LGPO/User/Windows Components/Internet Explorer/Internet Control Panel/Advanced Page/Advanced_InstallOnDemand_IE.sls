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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_InstallOnDemand_IE.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting allows you to manage whether users can automatically download and install Web components (such as fonts) that can installed by Internet Explorer Active Setup.  For example, if you open a Web page that requires Japanese-text display support, Internet Explorer could prompt the user to download the Japanese Language Pack component if it is not already installed.
# 
# If you enable this policy setting, Web components such as fonts will be automatically installed as necessary.
# 
# If you disable this policy setting, users will be prompted when Web Components such as fonts would be downloaded.
# 
# If you do not configure this policy, users will be prompted when Web Components such as fonts would be downloaded.
Allow Install On Demand (Internet Explorer):
  lgpo.set:
  - name: Advanced_InstallOnDemand_IE
  - setting: Enabled
  - policy_class: User
