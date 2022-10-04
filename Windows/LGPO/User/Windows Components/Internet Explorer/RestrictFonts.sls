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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictFonts.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# Prevents users from changing font settings.
# 
# If you enable this policy, users will not be able to change font settings for viewing Web pages. All font settings visible after pressing the "Fonts" button on the General Tab in the Internet Options dialog box will be disabled.
# 
# If you disable this policy or do not configure it, users can change the default fonts for viewing Web pages.
# 
# If you set the "Disable the General page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), you do not need to set this policy, because the "Disable the General page" policy removes the General tab from the interface.
# 
# Note: The default font settings colors are ignored in cases in which the Web page author has specified the font attributes.
Disable changing font settings:
  lgpo.set:
  - name: RestrictFonts
  - setting: Enabled
  - policy_class: User
