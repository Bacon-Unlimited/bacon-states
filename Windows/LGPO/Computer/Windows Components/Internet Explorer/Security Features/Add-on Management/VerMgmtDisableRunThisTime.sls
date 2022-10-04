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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\Add-on Management\VerMgmtDisableRunThisTime.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to stop users from seeing the "Run this time" button and from running specific outdated ActiveX controls in Internet Explorer.
# 
# If you enable this policy setting, users won't see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control.
# 
# If you disable or don't configure this policy setting, users will see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control. Clicking this button lets the user run the outdated ActiveX control once.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
'Remove "Run this time" button for outdated ActiveX controls in Internet Explorer ':
  lgpo.set:
  - name: VerMgmtDisableRunThisTime
  - setting: Enabled
  - policy_class: Machine
