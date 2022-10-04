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
# LOCATION: \Computer\Windows Components\Internet Explorer\ResetZoomForDialogInIEMode.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting lets admins reset zoom to default for HTML dialogs in Internet Explorer mode.
# 
# If you enable this policy, the zoom of an HTML dialog in Internet Explorer mode will not get propagated from its parent page.
# 
# If you disable, or don't configure this policy, the zoom of an HTML dialog in Internet Explorer mode will be set based on the zoom of it's parent page.
# 
# For more information, see https://go.microsoft.com/fwlink/?linkid=2102115
Reset zoom to default for HTML dialogs in Internet Explorer mode:
  lgpo.set:
  - name: ResetZoomForDialogInIEMode
  - setting: Enabled
  - policy_class: Machine
