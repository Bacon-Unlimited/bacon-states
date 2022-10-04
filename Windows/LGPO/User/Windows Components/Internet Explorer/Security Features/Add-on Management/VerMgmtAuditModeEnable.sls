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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Add-on Management\VerMgmtAuditModeEnable.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting determines whether Internet Explorer saves log information for ActiveX controls.
# 
# If you enable this policy setting, Internet Explorer logs ActiveX control information (including the source URI that loaded the control and whether it was blocked) to a local file.
# 
# If you disable or don't configure this policy setting, Internet Explorer won't log ActiveX control information.
# 
# Note that you can turn this policy setting on or off regardless of the "Turn off blocking of outdated ActiveX controls for Internet Explorer" or "Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains" policy settings.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
Turn on ActiveX control logging in Internet Explorer:
  lgpo.set:
  - name: VerMgmtAuditModeEnable
  - setting: Enabled
  - policy_class: User
