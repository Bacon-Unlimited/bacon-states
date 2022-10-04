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
# LOCATION: \Computer\Windows Components\Smart Card\FilterDuplicateCerts.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy settings lets you configure if all your valid logon certificates are displayed.
# 
# During the certificate renewal period, a user can have multiple valid logon certificates issued from the same certificate template.  This can cause confusion as to which certificate to select for logon.  The common case for this behavior is when a certificate is renewed and the old one has not yet expired.  Two certificates are determined to be the same if they are issued from the same template with the same major version and they are for the same user (determined by their UPN). 
#           
# If there are two or more of the "same" certificate on a smart card and this policy is enabled then the certificate that is used for logon on Windows 2000, Windows XP, and Windows 2003 Server will be shown, otherwise the the certificate with the expiration time furthest in the future will be shown.  Note: This setting will be applied after the following policy: "Allow time invalid certificates"
# 
# If you enable or do not configure this policy setting, filtering will take place.
# 
# If you disable this policy setting, no filtering will take place.
Filter duplicate logon certificates:
  lgpo.set:
  - name: FilterDuplicateCerts
  - setting: Enabled
  - policy_class: Machine
