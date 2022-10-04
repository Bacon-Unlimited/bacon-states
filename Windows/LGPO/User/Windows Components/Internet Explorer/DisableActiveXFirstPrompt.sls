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
# LOCATION: \User\Windows Components\Internet Explorer\DisableActiveXFirstPrompt.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to turn off the ActiveX Opt-In prompt. ActiveX Opt-In prevents websites from loading any ActiveX control without prior approval. If a website attempts to load an ActiveX control that Internet Explorer has not used before, a Notification bar will appear, asking the user for approval.
# 
# If you enable this policy setting, the ActiveX Opt-In prompt does not appear. Internet Explorer does not ask the user for permission to load an ActiveX control, and Internet Explorer loads the control if it passes all other internal security checks.
# 
# If you disable or do not configure this policy setting, the ActiveX Opt-In prompt appears.
Turn off ActiveX Opt-In prompt:
  lgpo.set:
  - name: DisableActiveXFirstPrompt
  - setting: Enabled
  - policy_class: User
