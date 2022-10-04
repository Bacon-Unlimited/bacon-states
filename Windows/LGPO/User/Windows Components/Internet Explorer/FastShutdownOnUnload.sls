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
# LOCATION: \User\Windows Components\Internet Explorer\FastShutdownOnUnload.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting allows you to revert to the Internet Explorer 8 behavior of allowing OnUnLoad script handlers to display UI during shutdown. This policy setting may be needed to fix compatibility problems with particular web applications.
# 
# If you enable this policy setting, OnUnLoad script handlers display UI during shutdown.
# 
# If you disable or do not configure this policy setting, OnUnLoad script handlers do not display UI during shutdown (default behavior in Internet Explorer 9).
Allow Internet Explorer 8 shutdown behavior:
  lgpo.set:
  - name: FastShutdownOnUnload
  - setting: Enabled
  - policy_class: User
