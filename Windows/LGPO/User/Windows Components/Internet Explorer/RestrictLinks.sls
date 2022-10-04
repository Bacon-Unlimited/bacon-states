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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictLinks.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from changing the colors of links on Web pages.
# 
# If you enable this policy, the color settings for links appear dimmed. The settings are located in the Links area of the dialog box that appears when users click the General tab and then click the Colors button in the Internet Options dialog box.
# 
# If you disable this policy or do not configure it, users can change the default color of links on Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
# 
# Note: The default link colors are ignored on Web pages on which the author has specified link colors.
Disable changing link color settings:
  lgpo.set:
  - name: RestrictLinks
  - setting: Enabled
  - policy_class: User
