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
# LOCATION: \Computer\Windows Components\Smart Card\AllowTimeInvalidCertificates.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting permits those certificates to be displayed for logon that are either expired or not yet valid.
# 
# Under previous versions of Microsoft Windows, certificates were required to contain a valid time and not be expired.  The certificate must still be accepted by the domain controller in order to be used.  This setting only controls the displaying of the certificate on the client machine. 
# 
# If you enable this policy setting certificates will be listed on the logon screen regardless of whether they have an invalid time or their time validity has expired.
# 
# If you disable or do not configure this policy setting, certificates which are expired or not yet valid will not be listed on the logon screen.
Allow time invalid certificates:
  lgpo.set:
  - name: AllowTimeInvalidCertificates
  - setting: Enabled
  - policy_class: Machine
