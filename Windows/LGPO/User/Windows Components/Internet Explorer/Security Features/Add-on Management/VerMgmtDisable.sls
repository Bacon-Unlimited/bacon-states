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
# LOCATION: \User\Windows Components\Internet Explorer\Security Features\Add-on Management\VerMgmtDisable.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.
# 
# If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.
# 
# If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.
# 
# For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
Turn off blocking of outdated ActiveX controls for Internet Explorer:
  lgpo.set:
  - name: VerMgmtDisable
  - setting: Enabled
  - policy_class: User
