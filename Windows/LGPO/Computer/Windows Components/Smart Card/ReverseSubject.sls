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
# LOCATION: \Computer\Windows Components\Smart Card\ReverseSubject.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you reverse the subject name from how it is stored in the certificate when displaying it during logon.  
#           
# By default the user principal name (UPN) is displayed in addition to the common name to help users distinguish one certificate from another.  For example, if the certificate subject was CN=User1, OU=Users, DN=example, DN=com and had an UPN of user1@example.com then "User1" will be displayed along with "user1@example.com."  If the UPN is not present then the entire subject name will be displayed.  This setting controls the appearance of that subject name and might need to be adjusted per organization.
# 
# If you enable this policy setting or do not configure this setting, then the subject name will be reversed.  
# 
# If you disable , the subject name will be displayed as it appears in the certificate.
Reverse the subject name stored in a certificate when displaying:
  lgpo.set:
  - name: ReverseSubject
  - setting: Enabled
  - policy_class: Machine
