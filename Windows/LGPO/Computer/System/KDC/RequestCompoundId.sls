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
# LOCATION: \Computer\System\KDC\RequestCompoundId.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to configure a domain controller to request compound authentication.
# 
# Note: For a domain controller to request compound authentication, the policy "KDC support for claims, compound authentication, and Kerberos armoring" must be configured and enabled. 
# 
# If you enable this policy setting, domain controllers will request compound authentication. The returned service ticket will contain compound authentication only when the account is explicitly configured. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain. 
# 
# If you disable or do not configure this policy setting, domain controllers will return service tickets that contain compound authentication any time the client sends a compound authentication request regardless of the account configuration.
# 
Request compound authentication:
  lgpo.set:
  - name: RequestCompoundId
  - setting: Enabled
  - policy_class: Machine
