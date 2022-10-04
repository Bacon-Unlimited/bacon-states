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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_ProfileAssistant.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting specifies whether you will accept requests from Web sites for Profile Assistant information.
# 
# If you enable this policy setting, Profile Assistant information will not be provided, and users will not be prompted to provide information.
# 
# If you disable this policy setting, then when a Web site requests Profile Assistant information, users will be prompted to choose which information to share. At that time, users can also choose to allow this information to be shared with the Web site in the future without being prompted.
# 
# If you do not configure this policy setting, a user will have the freedom to accept requests from Web sites for Profile Assistant information.
Turn off Profile Assistant:
  lgpo.set:
  - name: Advanced_ProfileAssistant
  - setting: Enabled
  - policy_class: User
